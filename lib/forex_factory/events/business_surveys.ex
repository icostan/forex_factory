defmodule ForexFactory.Events.BusinessSurveys do
  @moduledoc "Business surveys events"

  alias ForexFactory.{Event, Events}

  defmodule Manufacturing do
    @moduledoc "Business manufacturing surveys"
    use Events.Type

    defevent({:AUD, %Event{id: "138685", frequency: :MoM}})
    defevent({:CAD, %Event{id: "137060", frequency: :MoM}})
    defevent({:CHF, %Event{id: "134525", frequency: :MoM}})
    defevent({:CNY, %Event{id: "135131", frequency: :MoM}})
    defevent({:EUR, %Event{id: "134920", frequency: :MoM}})
    defevent({:GBP, %Event{id: "134922", frequency: :MoM}})
    defevent({:JPY, %Event{id: "134915", frequency: :MoM}})
    defevent({:NZD, %Event{id: "137472", frequency: :MoM}})
    defevent({:USD, %Event{id: "138661", frequency: :MoM}})
  end

  defmodule Services do
    @moduledoc "Business services surveys"
    use Events.Type

    defevent({:AUD, %Event{id: "138684", frequency: :MoM}})
    defevent({:CNY, %Event{id: "135132", frequency: :MoM}})
    defevent({:EUR, %Event{id: "134921", frequency: :MoM}})
    defevent({:GBP, %Event{id: "134923", frequency: :MoM}})
    defevent({:NZD, %Event{id: "137484", frequency: :MoM}})
    defevent({:USD, %Event{id: "138660", frequency: :MoM}})
  end
end
