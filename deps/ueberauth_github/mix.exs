defmodule UeberauthGithub.Mixfile do
  use Mix.Project

  @version "0.4.1"

  def project do
    [app: :ueberauth_github,
     version: @version,
     name: "Ueberauth Github",
     package: package(),
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: "https://github.com/ueberauth/ueberauth_github",
     homepage_url: "https://github.com/ueberauth/ueberauth_github",
     description: description(),
     deps: deps(),
     docs: docs()]
  end

  def application do
    [applications: [:logger, :ueberauth, :oauth2]]
  end

  defp deps do
    [{:ueberauth, "~> 0.4"},
     {:oauth2, "~> 0.8"},

     # docs dependencies
     {:earmark, "~> 0.2", only: :dev},
     {:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp docs do
    [extras: ["README.md"]]
  end

  defp description do
    "An Ueberauth strategy for using Github to authenticate your users."
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Daniel Neighman"],
      licenses: ["MIT"],
      links: %{"GitHub": "https://github.com/ueberauth/ueberauth_github"}]
  end
end
