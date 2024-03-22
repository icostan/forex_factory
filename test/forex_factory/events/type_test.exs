defmodule ForexFactory.Events.TypeTest do
  use ExUnit.Case, async: true

  alias ForexFactory.{Event, Events}

  defmodule TypeStub do
    use Events.Type
    defevent({:USD, %Event{id: "1", frequency: :YoY}})
    defevent({:EUR, %Event{id: "2", frequency: :YoY}})
  end

  describe ".event/2" do
    test "return event if valid currency" do
      assert {:ok, %Event{id: "1", currency: :USD, frequency: :YoY, type: TypeStub}} =
               TypeStub.event(:USD)
    end

    test "return error if invalid currency" do
      assert {:error, "invalid 'MISS' currency" <> _} = TypeStub.event(:MISS)
    end

    test "return error if missing currency" do
      assert {:error, "missing 'AUD' event" <> _} = TypeStub.event(:AUD)
    end

    test "raise error" do
      assert_raise ArgumentError, ~r/missing 'AUD' event/, fn ->
        TypeStub.event!(:AUD)
      end
    end
  end

  test ".all/0" do
    assert [%Event{id: "2", currency: :EUR}, %Event{id: "1", currency: :USD}] = TypeStub.all()
  end
end
