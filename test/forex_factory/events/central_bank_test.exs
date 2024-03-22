defmodule ForexFactory.Events.CentralBankTest do
  use ExUnit.Case, async: true

  alias ForexFactory.{Event, Events}

  test "Rate USD" do
    assert {:ok, %Event{id: "136095", frequency: :YoY}} = Events.CentralBank.Rate.event(:USD)
  end
end
