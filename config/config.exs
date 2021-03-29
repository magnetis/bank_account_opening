# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bank_account_opening,
  ecto_repos: [BankAccountOpening.Repo]

# Configures the endpoint
config :bank_account_opening, BankAccountOpeningWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "W6Z0Lg3AxtNtdGy4vBz7i6LPK4KH8nzr+Hmf2/gCM27/Tr710XA7Utones8FNkJ3",
  render_errors: [view: BankAccountOpeningWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BankAccountOpening.PubSub,
  live_view: [signing_salt: "SgXY8Y8k"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
