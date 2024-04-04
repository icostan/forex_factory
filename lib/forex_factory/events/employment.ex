defmodule ForexFactory.Events.Employment do
  @moduledoc "Labour events"

  alias ForexFactory.{Event, Events}

  defmodule JobOpenings do
    @moduledoc "Number of job openings during the reported period"
    use Events.Type

    defevent({:AUD, %Event{id: "137356", frequency: :MoM}})
    defevent({:USD, %Event{id: "138639", frequency: :MoM}})
  end

  defmodule JobCuts do
    @moduledoc "Change in the number of job cuts announced by employers"
    use Events.Type

    defevent({:USD, %Event{id: "136882", frequency: :MoM}})
  end

  defmodule UnemploymentRate do
    @moduledoc "Percentage of the total work force that is unemployed and actively seeking employment during the previous"
    use Events.Type

    defevent({:AUD, %Event{id: "137380", frequency: :MoM}})
    defevent({:CAD, %Event{id: "138127", frequency: :MoM}})
    defevent({:CHF, %Event{id: "134992", frequency: :MoM}})
    defevent({:CNY, %Event{id: "135295", frequency: :MoM}})
    defevent({:EUR, %Event{id: "138963", frequency: :MoM}})
    defevent({:GBP, %Event{id: "138705", frequency: :MoM}})
    defevent({:JPY, %Event{id: "139558", frequency: :MoM}})
    defevent({:NZD, %Event{id: "137502", frequency: :QoQ}})
    defevent({:USD, %Event{id: "135982", frequency: :MoM}})
  end

  defmodule JoblessClaims do
    @moduledoc "The number of individuals who filed for unemployment insurance"
    use Events.Type

    defevent({:GBP, %Event{id: "138698", frequency: :MoM}})
    defevent({:USD, %Event{id: "136524", frequency: :WoW}})
  end

  defmodule EmploymentChange do
    @moduledoc "Change in the number of employed people during the previous period"
    use Events.Type

    defevent({:AUD, %Event{id: "137366", frequency: :MoM}})
    defevent({:CAD, %Event{id: "138082", frequency: :MoM}})
    defevent({:EUR, %Event{id: "139043", frequency: :QoQ}})
    defevent({:NZD, %Event{id: "137498", frequency: :QoQ}})
    defevent({:USD, %Event{id: "135975", frequency: :MoM}})
  end
end
