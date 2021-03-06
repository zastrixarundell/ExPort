# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :ex_port,
  ecto_repos: [ExPort.Repo]

# Configures the endpoint
config :ex_port, ExPortWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ac5NraB/tgB+F+Y2TuO/btjQwrO77OXwh6fyK2EI69EVgV3wxSitVK23cTzRGeAL",
  render_errors: [view: ExPortWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ExPort.PubSub,
  live_view: [signing_salt: "Pfvx6pl5"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :ex_port, ExPort.Mailer, adapter: Swoosh.Adapters.Local

# Swoosh API client is needed for adapters other than SMTP.
config :swoosh, :api_client, false

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.12.18",
  default: [
    args: ~w(js/app.js js/spotify.js js/navigation.js --bundle --target=es2016 --outdir=../priv/static/assets),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :ex_port, :spotify,
  api_service: ExPort.Services.SpotifyApi,
  api_client: System.get_env("SPOTIFY_API_CLIENT"),
  api_secret: System.get_env("SPOTIFY_API_SECRET")

config :ex_port, :github,
  api_service: ExPort.Services.GithubApi

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
    ExPort.Cache.UserCache,
    ExPort.Scheduler
  ]

config :ex_port, ExPort.Scheduler,
  jobs: [
    {"* * * * *", fn -> ExPort.Services.SpotifyService.reauth_user(ExPort.Accounts.first_user!()) end}
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
