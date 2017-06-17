use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :roomchat_server, RoomchatServer.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :roomchat_server, RoomchatServer.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "roomchat_server_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
