import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :ecto_dynamic, EctoDynamic.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "ecto_dynamic_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ecto_dynamic, EctoDynamicWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "j0OCGduLsGU2aWQh5zkmBIWkKH3Ig0FYa0APYy0h1EtoY10Yh/vuJCLwCm1ug4sF",
  server: false

# In test we don't send emails.
config :ecto_dynamic, EctoDynamic.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
