# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :slack,
  ecto_repos: [Slack.Repo]

# Configures the endpoint
config :slack, Slack.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yS3js8EwqqjpqzqIGLjELP/1uncARjjo2czxyFve1BCel4w+w3aMGJaJpq8as1z/",
  render_errors: [view: Slack.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Slack.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
