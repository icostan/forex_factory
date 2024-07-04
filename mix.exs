defmodule ForexFactory.MixProject do
  use Mix.Project

  def project do
    [
      app: :forex_factory,
      version: "0.1.4",
      elixir: "~> 1.16",
      name: "ForexFactory",
      description: "ForexFactory API Client for Elixir (https://www.forexfactory.com/)",
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  def package() do
    %{
      licenses: ["MIT"],
      maintainers: ["Iulian Costan"],
      links: %{"GitHub" => "https://github.com/icostan/forex_factory"}
    }
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:req, "~> 0.4.0"},
      {:nimble_csv, "~> 1.2.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:exvcr, "~> 0.11", only: [:dev, :test]},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    [
      check: [
        "compile --warnings-as-errors --force",
        "format --check-formatted",
        "dialyzer",
        "credo"
      ]
    ]
  end
end
