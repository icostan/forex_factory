# ForexFactory

ForexFactory API Client for Elixir.

## Installation

Add `forex_factory` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:forex_factory, "~> 0.1.0"}
  ]
end
```

## Usage

#### Get data by type and given currency

As simple as this (thanks to little meta-programming magic).

```elixir
iex(1)> ForexFactory.Events.Inflation.CPI.data(:USD, limit: 1)
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
```

#### Get all events for a type

```elixir
iex(2)> ForexFactory.Events.Inflation.CORE_CPI |> ForexFactory.events()
[
  %ForexFactory.Event{
    id: "136038",
    type: ForexFactory.Events.Inflation.CORE_CPI,
    currency: :USD,
    frequency: :MoM
  },
  %ForexFactory.Event{
    id: "139672",
    type: ForexFactory.Events.Inflation.CORE_CPI,
    currency: :JPY,
    frequency: :YoY
  },
  %ForexFactory.Event{
    id: "138953",
    type: ForexFactory.Events.Inflation.CORE_CPI,
    currency: :EUR,
    frequency: :YoY
  }
]
```

#### Get a specific event by currency

```elixir
iex(11)> ForexFactory.Events.Inflation.CORE_CPI |> ForexFactory.event(:USD)
{:ok,
 %ForexFactory.Event{
   id: "136038",
   type: ForexFactory.Events.Inflation.CORE_CPI,
   currency: :USD,
   frequency: :MoM
 }}
```

or using bang! function

```elixir
iex(2)> ForexFactory.Events.Inflation.CORE_CPI |> ForexFactory.event!(:USD)
%ForexFactory.Event{
  id: "136038",
  type: ForexFactory.Events.Inflation.CORE_CPI,
  currency: :USD,
  frequency: :MoM
}
```

#### Get data for a specific event
```elixir
iex(5)> ForexFactory.Events.Inflation.CPI |> ForexFactory.event!(:USD) |> ForexFactory.data(limit: 1)
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
```
