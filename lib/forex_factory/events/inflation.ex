defmodule ForexFactory.Events.Inflation do
  @moduledoc "Inflation events"

  alias ForexFactory.{Event, Events}

  defmodule CPI do
    @moduledoc "Consumer Price Index"
    use Events.Type

    defevent({:AUD, %Event{id: "137416", frequency: :YoY}})
    defevent({:CAD, %Event{id: "138109", frequency: :YoY}})
    defevent({:CHF, %Event{id: "135015", frequency: :MoM}})
    defevent({:CNY, %Event{id: "135148", frequency: :YoY}})
    defevent({:EUR, %Event{id: "138962", frequency: :YoY}})
    defevent({:GBP, %Event{id: "138744", frequency: :YoY}})
    defevent({:JPY, %Event{id: "139683", frequency: :YoY}})
    defevent({:NZD, %Event{id: "137881", frequency: :QoQ}})
    defevent({:USD, %Event{id: "136045", frequency: :YoY}})
  end

  defmodule CoreCPI do
    @moduledoc "Core Consumer Price Index"
    use Events.Type

    defevent({:EUR, %Event{id: "138961", frequency: :YoY}})
    defevent({:JPY, %Event{id: "139672", frequency: :YoY}})
    defevent({:USD, %Event{id: "136038", frequency: :MoM}})
  end

  defmodule Earnings do
    @moduledoc "Average Earnings"
    use Events.Type

    defevent({:AUD, %Event{id: "137437", frequency: :QoQ}})
    defevent({:GBP, %Event{id: "138703", frequency: :QoY}})
    defevent({:JPY, %Event{id: "128869", frequency: :YoY}})
    defevent({:USD, %Event{id: "135980", frequency: :MoM}})
  end
end
