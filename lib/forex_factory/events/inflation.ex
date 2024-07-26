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

  defmodule PPI do
    @moduledoc "Producer Price Index"
    use Events.Type

    defevent({:AUD, %Event{id: "137220", name: "AUD PPI", frequency: :QoQ}})
    defevent({:CHF, %Event{id: "135007", name: "CHF PPI", frequency: :MoM}})
    defevent({:CNY, %Event{id: "135158", name: "CNY PPI", frequency: :YoY}})
    defevent({:EUR, %Event{id: "139001", name: "EUR PPI", frequency: :MoM}})
    defevent({:GBP, %Event{id: "138772", name: "GBP PPI Output", frequency: :MoM}})
    defevent({:JPY, %Event{id: "139702", name: "JPY PPI", frequency: :YoY}})
    defevent({:NZD, %Event{id: "137979", name: "NZD PPI Output", frequency: :QoQ}})
    defevent({:USD, %Event{id: "136022", name: "USD PPI", frequency: :MoM}})
  end

  defmodule CorePPI do
    @moduledoc "Core Producer Price Index"
    use Events.Type

    defevent({:USD, %Event{id: "136021", name: "Core USD PPI", frequency: :MoM}})
  end
end
