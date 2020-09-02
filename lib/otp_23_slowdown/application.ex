defmodule Otp23Slowdown.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Otp23Slowdown.Repo,
      # Start the Telemetry supervisor
      Otp23SlowdownWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Otp23Slowdown.PubSub},
      # Start the Endpoint (http/https)
      Otp23SlowdownWeb.Endpoint
      # Start a worker by calling: Otp23Slowdown.Worker.start_link(arg)
      # {Otp23Slowdown.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Otp23Slowdown.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Otp23SlowdownWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
