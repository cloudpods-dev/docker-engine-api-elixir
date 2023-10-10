defmodule DockerEngineAPI.Mixfile do
  use Mix.Project

  def project do
    [
      app: :docker_engine_api,
      version: "1.43.0",
      elixir: "~> 1.15",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/cloudpods-dev/docker-engine-api-elixir"
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
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.4"},
      {:hackney, "~> 1.17"},
      {:poison, ">= 1.0.0"},
      {:jason, ">= 1.0.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "A docker engine api client generated using swagger codegen."
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/cloudpods-dev/docker-engine-api-elixir"}
    ]
  end
end
