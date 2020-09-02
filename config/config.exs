# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :otp_23_slowdown,
  ecto_repos: [Otp23Slowdown.Repo]

# Configures the endpoint
config :otp_23_slowdown, Otp23SlowdownWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "q0CB+9tEbZQK57E5hdGkxYnXxYHCIv9IvPoStF8T92rc7QKYOJfl1wv5sWuFmWme",
  render_errors: [view: Otp23SlowdownWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Otp23Slowdown.PubSub,
  live_view: [signing_salt: "pT+vI/nG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
