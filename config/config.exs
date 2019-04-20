# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :nspeck_backend,
  ecto_repos: [NspeckBackend.Repo]

# Configures the endpoint
config :nspeck_backend, NspeckBackendWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uwnUCB2bjgzmDZ9VZ5FYL4qCSuP/1AJm8AL756J1KjuS8YlRx6v9E3W+tPnjxSKn",
  render_errors: [view: NspeckBackendWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NspeckBackend.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
