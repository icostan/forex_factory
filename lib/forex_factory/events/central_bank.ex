defmodule ForexFactory.Events.CentralBank do
  @moduledoc "Events from Central Banks"

  alias ForexFactory.{Event, Events}

  defmodule Rate do
    @moduledoc "Interest Rate"
    use Events.Type

    defevent({:AUD, %Event{id: "136487", frequency: :YoY}})
    defevent({:CAD, %Event{id: "136425", frequency: :YoY}})
    defevent({:CHF, %Event{id: "135085", frequency: :YoY}})
    defevent({:CNY, %Event{id: "135247", frequency: :YoY}})
    defevent({:EUR, %Event{id: "135507", frequency: :YoY}})
    defevent({:GBP, %Event{id: "135711", frequency: :YoY}})
    defevent({:JPY, %Event{id: "139583", frequency: :YoY}})
    defevent({:NZD, %Event{id: "136462", frequency: :YoY}})
    defevent({:USD, %Event{id: "136095", frequency: :YoY}})
  end
end
