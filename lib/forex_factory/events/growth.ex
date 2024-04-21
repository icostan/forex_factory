defmodule ForexFactory.Events.Growth do
  @moduledoc "Economy growth events"

  alias ForexFactory.{Event, Events}

  defmodule GDP do
    @moduledoc "Gross Domestic Product"
    use Events.Type

    defevent({:AUD, %Event{id: "137442", frequency: :QoQ}})
    defevent({:CAD, %Event{id: "138117", frequency: :MoM}})
    defevent({:CHF, %Event{id: "135075", frequency: :QoQ}})
    defevent({:CNY, %Event{id: "135306", frequency: :QoY}})
    defevent({:EUR, %Event{id: "139061", frequency: :QoQ}})
    defevent({:GBP, %Event{id: "138828", frequency: :MoM}})
    defevent({:JPY, %Event{id: "139730", frequency: :QoQ}})
    defevent({:NZD, %Event{id: "137511", frequency: :QoQ}})
    defevent({:USD, %Event{id: "136207", frequency: :QoQ}})
  end

  defmodule RetailSales do
    @moduledoc "Retail sales"
    use Events.Type

    defevent({:AUD, %Event{id: "138044", frequency: :MoM}})
    defevent({:CAD, %Event{id: "138158", frequency: :MoM}})
    defevent({:CHF, %Event{id: "135045", frequency: :YoY}})
    defevent({:CNY, %Event{id: "135299", frequency: :YoY}})
    defevent({:EUR, %Event{id: "138965", frequency: :MoM}})
    defevent({:GBP, %Event{id: "138912", frequency: :MoM}})
    defevent({:JPY, %Event{id: "139851", frequency: :YoY}})
    defevent({:NZD, %Event{id: "137950", frequency: :QoQ}})
    defevent({:USD, %Event{id: "136151", frequency: :MoM}})
  end

  defmodule CoreRetailSales do
    @moduledoc "Core retail sales"
    use Events.Type

    defevent({:CAD, %Event{id: "138149", frequency: :MoM}})
    defevent({:USD, %Event{id: "136150", frequency: :MoM}})
  end
end
