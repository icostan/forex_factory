defmodule ForexFactory.HttpClientTest do
  use ExUnit.Case, async: true

  test ".api_url/0" do
    assert "https://www.forexfactory.com" = ForexFactory.HttpClient.api_url()
  end
end
