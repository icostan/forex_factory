defmodule ForexFactory.Client do
  @moduledoc "Client for ForexFactory API"

  alias ForexFactory.{HttpClient, Event}

  @api_path "/calendar/graph/:id?limit=:limit"

  @spec data(Event.t(), keyword) :: {:ok, term} | {:error, term}
  def data(event, opts \\ [])

  def data(nil, _opts), do: {:error, "nil event"}

  def data(event, opts) do
    params = %{
      path: [id: event.id],
      query: [limit: Keyword.get(opts, :limit, 200)]
    }

    @api_path |> HttpClient.get(params) |> response()
  end

  defp response({:error, error}), do: {:error, error}

  defp response({:ok, response}), do: {:ok, response.body}
end
