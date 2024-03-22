defmodule ForexFactory.Events.InflationTest do
  use ExUnit.Case, async: true
  use ExVCR.Mock, adapter: ExVCR.Adapter.Finch

  alias ForexFactory.{Event, Events}

  test "CPI USD" do
    assert {:ok, %Event{id: "136045", frequency: :YoY}} = Events.Inflation.CPI.event(:USD)
  end

  test "CORE CPI USD" do
    assert {:ok, %Event{id: "136038", frequency: :MoM}} = Events.Inflation.CORE_CPI.event(:USD)
  end

  test ".data/2" do
    use_cassette("inflation cpi usd") do
      assert {:ok,
              %{
                "data" => %{
                  "events" => [
                    %{
                      "actual" => 3.2,
                      "actual_formatted" => "3.2%",
                      "date" => "Mar 12, 2024",
                      "dateline" => 1_710_246_600,
                      "forecast" => 3.1,
                      "forecast_formatted" => "3.1%",
                      "id" => 136_044,
                      "is_active" => false,
                      "is_most_recent" => true,
                      "revision" => nil,
                      "revision_formatted" => nil
                    }
                  ]
                }
              }} = ForexFactory.Events.Inflation.CPI.data(:USD, limit: 1)
    end
  end
end
