defmodule ForexFactory.Events.Housing do
  @moduledoc "Housing events"

  alias ForexFactory.{Event, Events}

  defmodule BuildingPermits do
    @moduledoc "Building permits events"
    use Events.Type

    defevent({:AUD, %Event{id: "138321", name: "Building Approvals", frequency: :MoM}})
    defevent({:CAD, %Event{id: "138213", name: "Building Permits", frequency: :MoM}})
    defevent({:NZD, %Event{id: "137967", name: "Building Consents", frequency: :MoM}})
    defevent({:USD, %Event{id: "136671", name: "Building Permits", frequency: :MoM}})
  end

  defmodule NewHomeSales do
    @moduledoc "New home sales events"
    use Events.Type

    defevent({:USD, %Event{id: "136695", name: "New Home Sales", frequency: :MoM}})
  end

  defmodule ExistingHomeSales do
    @moduledoc "Existing home sales events"
    use Events.Type

    defevent({:USD, %Event{id: "138467", name: "Existing Home Sales", frequency: :MoM}})
  end

  defmodule PendingHomeSales do
    @moduledoc "Pending home sales events"
    use Events.Type

    defevent({:USD, %Event{id: "138479", name: "Pending Home Sales", frequency: :MoM}})
  end

  defmodule HousingStarts do
    @moduledoc "Pending home sales events"
    use Events.Type

    defevent({:JPY, %Event{id: "139643", name: "Housing Starts", frequency: :YoY}})
    defevent({:USD, %Event{id: "136683", name: "Housing Starts", frequency: :MoM}})
  end

  defmodule ConstructionSpending do
    @moduledoc "Construction spending events"
    use Events.Type

    defevent({:GBP, %Event{id: "138845", name: "Construction Output", frequency: :MoM}})
    defevent({:USD, %Event{id: "136138", name: "Construction Spending", frequency: :MoM}})
  end

  defmodule HPI do
    @moduledoc "House prices index events"
    use Events.Type

    defevent({:CAD, %Event{id: "138237", name: "NHPI", frequency: :MoM}})
    defevent({:CNY, %Event{id: "136825", name: "New Home Prices", frequency: :MoM}})
    defevent({:GBP, %Event{id: "135777", name: "Nationwide HPI", frequency: :MoM}})
    defevent({:USD, %Event{id: "136258", name: "HPI", frequency: :MoM}})
  end
end
