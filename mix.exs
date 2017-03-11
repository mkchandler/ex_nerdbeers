defmodule ExNerdBeers.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_nerdbeers,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     test_coverage: [tool: Coverex.Task, coveralls: true],
     deps: deps()]
  end

  def application do
    [applications: [:logger, :httpoison],
     mod: {ExNerdBeers, []}]
  end

  defp deps do
    [{:httpoison, "~> 0.9.0"},
     {:poison, "~> 2.0"},
     {:coverex, "~> 1.4.10", only: :test}]
  end
end
