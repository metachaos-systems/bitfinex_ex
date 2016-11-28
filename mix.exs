defmodule Bitfinex.Mixfile do
  use Mix.Project

  def project do
    [app: :bitfinex_ex,
     version: "0.0.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     description: description,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
     mod: {Bitfinex, []}]
  end

  defp deps do
    [
      {:httpoison, ">= 0.0.0"},
      {:poison, ">= 1.0.0"},
      {:credo, ">= 0.0.0", only: [:dev, :test]},
      {:mix_test_watch, "~> 0.2", only: :dev}
    ]
  end

  def package do
    [
     files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["ontofractal"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/cyberpunk-ventures/bitfinex_ex"}]
  end

  def description do
    """
    WIP, alpha.

    Elixir wrapper for bitfinex.com API
    """
  end
end

