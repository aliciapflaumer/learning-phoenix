# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :learningphoenix,
  ecto_repos: [Learningphoenix.Repo]

# Configures the endpoint
config :learningphoenix, LearningphoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KtO1Nt0a0piyFa3TcbuPgvhLAQelDxyj0K9EsxWI4bzG0ff5hzMDWiqWbliioyl3",
  render_errors: [view: LearningphoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Learningphoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
