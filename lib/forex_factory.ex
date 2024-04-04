defmodule ForexFactory do
  @moduledoc """
  Elixir library for `https://www.forexfactory.com` API.
  """
  alias ForexFactory.{Client, Events, Event}

  @type type :: Events.Type.t()
  @type currency :: :AUD | :CAD | :CHF | :CNY | :EUR | :GBP | :JPY | :NZD | :USD
  @type opts :: keyword
  @type event :: Event.t()

  @currencies [:AUD, :CAD, :CHF, :CNY, :EUR, :GBP, :JPY, :NZD, :USD]
  @spec currencies() :: list(currency)
  def currencies(), do: @currencies

  @doc """
  Return all events for a given `type`.

      iex> ForexFactory.Events.Inflation.CoreCPI |> ForexFactory.events()
      [
        %ForexFactory.Event{
          id: "136038",
          type: ForexFactory.Events.Inflation.CoreCPI,
          currency: :USD,
          frequency: :MoM
        },
        %ForexFactory.Event{
          id: "139672",
          type: ForexFactory.Events.Inflation.CoreCPI,
          currency: :JPY,
          frequency: :YoY
        },
        %ForexFactory.Event{
          id: "138953",
          type: ForexFactory.Events.Inflation.CoreCPI,
          currency: :EUR,
          frequency: :YoY
        }
      ]
  """
  @spec events(type) :: list(event)
  def events(type) do
    # TODO: check `type` is a Events.Type
    type.all()
  end

  @doc """
  Return a specific event for given `type` and `currency` or raise error if not found.

      iex> ForexFactory.Events.Inflation.CoreCPI |> ForexFactory.event!(:USD)
      %ForexFactory.Event{
        id: "136038",
        type: ForexFactory.Events.Inflation.CoreCPI,
        currency: :USD,
        frequency: :MoM
      }

      iex> ForexFactory.Events.Inflation.CoreCPI |> ForexFactory.event!(:NZD)
      ** (ArgumentError) missing 'NZD' event of type Elixir.ForexFactory.Events.Inflation.CoreCPI

  """
  @spec event!(type, currency) :: event
  def event!(type, currency) do
    case event(type, currency) do
      {:ok, event} -> event
      {:error, message} -> raise ArgumentError, message
    end
  end

  @doc """
  Return a specific event for given `type` and `currency` or error if not found.

      iex> ForexFactory.Events.Inflation.CoreCPI |> ForexFactory.event(:USD)
      {:ok,
        %ForexFactory.Event{
        id: "136038",
        type: ForexFactory.Events.Inflation.CoreCPI,
        currency: :USD,
        frequency: :MoM
        }}

      iex> ForexFactory.Events.Inflation.CoreCPI |> ForexFactory.event(:NZD)
      {:error,
        "missing 'NZD' event of type Elixir.ForexFactory.Events.Inflation.CoreCPI"}

  """
  @spec event(type, currency) :: {:ok, event} | {:error, term}
  def event(type, currency) do
    # TODO: check `type` is a Events.Type
    type.event(currency)
  end

  @doc """
  Return data series for a given `event` or error if something goes wrong.

      iex> ForexFactory.Events.Inflation.CPI |> ForexFactory.event!(:USD) |> ForexFactory.data(limit: 1)
      {:ok,
       %{
         "data" => %{
           "events" => [
             %{
               "actual" => 3.2,
               "actual_formatted" => "3.2%",
               "date" => "Mar 12, 2024",
               "dateline" => 1710246600,
               "forecast" => 3.1,
               "forecast_formatted" => "3.1%",
               "id" => 136044,
               "is_active" => false,
               "is_most_recent" => true,
               "revision" => nil,
               "revision_formatted" => nil
             }
           ],
           "future_timestamps" => [1712005200],
           "past_timestamps" => [1707831000]
         },
         "meta" => %{
           "decimals" => 1,
           "ebase_event_id" => 884,
           "interval_name" => "MN1",
           "is_more" => true,
           "zero_line" => 0
         }
      }}

      iex>  nil |> ForexFactory.data(limit: 1)
      {:error, "nil event"}

  """
  @spec data(event, opts) :: {:ok, term} | {:error, term}
  def data(event, opts \\ []), do: Client.data(event, opts)
end
