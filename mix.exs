defmodule BeautyKernel.MixProject do
  use Mix.Project

  def project do
    [
      app: :beauty_kernel,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      build_embedded: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "BeautyKernel",
      source_url: "https://github.com/SofaKing18/beauty_kernel"
    ]
  end

  def application() do
    []
  end

  defp description() do
    "Aliases for Kernel's functions"
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "beauty_kernel",
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"],
      maintainers: ["Dmitry Shpagin"],
      links: %{"GitHub" => "https://github.com/SofaKing18/beauty_kernel"}
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.18.0", only: :dev},
    ]
  end
end
