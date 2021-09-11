defmodule ExPort.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ExPort.Repo,
      # Start the Telemetry supervisor
      ExPortWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ExPort.PubSub},
      # Start the Endpoint (http/https)
      ExPortWeb.Endpoint,
      # Start a worker by calling: ExPort.Worker.start_link(arg)
      # {ExPort.Worker, arg}
      ExPort.Cache.UserCache,
      ExPort.Scheduler
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ExPort.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ExPortWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
