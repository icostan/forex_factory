defmodule ForexFactory.Events.ConsumerSurveys do
  @moduledoc "Consumer surveys events"

  alias ForexFactory.{Event, Events}

  defmodule ConsumerSentiment do
    @moduledoc "Consumer sentiment"
    use Events.Type

    defevent({:AUD, %Event{id: "137239", frequency: :MoM}})
    defevent({:CHF, %Event{id: "139928", frequency: :MoM}})
    defevent({:EUR, %Event{id: "135484", frequency: :MoM}})
    defevent({:GBP, %Event{id: "135686", frequency: :MoM}})
    defevent({:JPY, %Event{id: "139549", frequency: :MoM}})
    defevent({:NZD, %Event{id: "137982", frequency: :MoM}})
    defevent({:USD, %Event{id: "136318", frequency: :MoM}})
  end

  defmodule InflationExpectations do
    @moduledoc "Inflation expectations"
    use Events.Type

    defevent({:AUD, %Event{id: "137251", frequency: :MoM}})
    defevent({:GBP, %Event{id: "135678", frequency: :MoM}})
    defevent({:NZD, %Event{id: "137491", frequency: :QoQ}})
    defevent({:USD, %Event{id: "136319", frequency: :MoM}})
  end
end
