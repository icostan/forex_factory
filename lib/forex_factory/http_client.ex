defmodule ForexFactory.HttpClient do
  @moduledoc "HTTP Client"

  @spec api_url :: binary
  def api_url() do
    Application.get_env(:forex_factory, :api_url, "https://www.forexfactory.com")
  end

  @spec get(binary, map) :: {:ok, term} | {:error, term}
  def get(api_path, params) do
    req = Req.new(base_url: api_url())

    Req.get(req,
      url: api_path,
      path_params: params[:path],
      params: params[:query]
    )
  end
end
