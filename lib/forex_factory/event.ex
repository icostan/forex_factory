defmodule ForexFactory.Event do
  @moduledoc "A specific event with id, type and currency"

  @type frequency :: :YoY | :QoQ | :MoM | :QoY
  @type t :: %__MODULE__{
          id: binary,
          type: module,
          currency: ForexFactory.currency(),
          frequency: frequency()
        }
  defstruct ~w(id type currency frequency)a
end
