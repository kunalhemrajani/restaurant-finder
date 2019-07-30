# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :restaurant_finder,
  ecto_repos: [RestaurantFinder.Repo]

config :restaurant_finder_web,
  ecto_repos: [RestaurantFinder.Repo],
  generators: [context_app: :restaurant_finder]

# Configures the endpoint
config :restaurant_finder_web, RestaurantFinderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QkbA3UTEexI6+tUxZXQ5GFM+LM1Lnu+6lkox26HA92zp8/jE+9X3l5CoU0npXLlh",
  render_errors: [view: RestaurantFinderWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RestaurantFinderWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
