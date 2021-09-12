import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :ex_port, ExPort.Repo,
  username: "postgres",
  password: "postgres",
  database: "ex_port_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ex_port, ExPortWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  server: false

# In test we don't send emails.
config :ex_port, ExPort.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

config :ex_port, :spotify,
  api_service: ExPort.SpotifyApiMock

config :ex_port, :application,
  children: [
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
  ]
