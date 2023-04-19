defmodule Typesensory.Mixfile do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/bcksl/typesensory"
  @description "An Elixir client for Typesense"

  def project do
    [
      app: :typesensory,
      version: @version,
      elixir: "~> 1.10",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      docs: docs(),
      name: "Typesensory",
      description: @description
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.4"},
      {:poison, "~> 3.0"},
      {:ex_doc, "~> 0.28", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      name: "typesensory",
      files: ~w(.formatter.exs config lib mix.exs README* LICENSE* typesense.openapi.yml),
      maintainers: ~w(bcksl),
      licenses: ~w(MIT),
      links: %{
        Documentation: "https://hexdocs.pm/typesensory",
        GitHub: @source_url
      }
    ]
  end

  defp docs do
    [
      source_ref: "v#{@version}",
      formatters: ["html", "epub"]
    ]
  end
end
