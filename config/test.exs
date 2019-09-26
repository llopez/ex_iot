use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ex_iot, ExIotWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ex_iot, ExIot.Repo,
  username: "postgres",
  password: "postgres",
  database: "ex_iot_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
