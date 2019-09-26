defmodule ExIot.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      ExIot.Repo,
      # Start the endpoint when the application starts
      ExIotWeb.Endpoint
      # Starts a worker by calling: ExIot.Worker.start_link(arg)
      # {ExIot.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ExIot.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ExIotWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
