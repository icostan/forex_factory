defmodule ForexFactoryTest do
  use ExUnit.Case, async: true
  use ExVCR.Mock, adapter: ExVCR.Adapter.Finch

  doctest ForexFactory, except: [data: 2]

  describe ".data/2" do
    setup do
      recorder = start_cassette("doctest data", [])
      on_exit(fn -> stop_cassette(recorder) end)
    end

    doctest ForexFactory, only: [data: 2]
  end

  test ".currencies/0" do
    assert :AUD = ForexFactory.currencies() |> List.first()
  end
end
