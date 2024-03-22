defmodule ForexFactory.Events.Type do
  @moduledoc "Behaviour for all event types"

  alias ForexFactory.{Event, Client}
  alias __MODULE__

  @type t :: module
  @type currency :: ForexFactory.currency()

  @callback all() :: list(Event.t())
  @callback event(currency) :: {:ok, Event.t()} | {:error, term}
  @callback event!(currency) :: Event.t()
  @callback data(currency, keyword) :: {:ok, term} | {:error, term}
  @callback data!(currency, keyword) :: {:ok, term} | {:error, term}

  defmacro __using__(_opts) do
    quote location: :keep do
      import Type
      Module.register_attribute(__MODULE__, :events, accumulate: true)
      @before_compile Type
    end
  end

  defmacro __before_compile__(_env) do
    quote location: :keep do
      @behaviour ForexFactory.Events.Type
      @currencies ForexFactory.currencies()

      @impl true
      def event!(currency) do
        case event(currency) do
          {:ok, event} -> event
          {:error, error} -> raise ArgumentError, error
        end
      end

      @impl true
      def event(currency) when currency in @currencies do
        if Keyword.has_key?(@events, currency) do
          {:ok, with_meta({currency, @events[currency]})}
        else
          {:error, "missing '#{currency}' event of type #{__MODULE__}"}
        end
      end

      @impl true
      def event(currency) do
        {:error, "invalid '#{currency}' currency, only '#{inspect(ForexFactory.currencies())}'"}
      end

      @impl true
      def all() do
        @events |> Enum.map(&with_meta(&1))
      end

      @impl true
      def data(currency, opts \\ []) do
        case event(currency) do
          {:ok, event} -> Client.data(event, opts)
          {:error, error} -> {:error, error}
        end
      end

      @impl true
      def data!(currency, opts \\ []) do
        event!(currency) |> Client.data(opts)
      end

      defp with_meta({currency, event}), do: %{event | currency: currency, type: __MODULE__}
    end
  end

  defmacro defevent(event) do
    quote do
      @events unquote(event)
    end
  end
end
