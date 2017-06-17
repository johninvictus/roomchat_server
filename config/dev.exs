use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :roomchat_server, RoomchatServer.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []


# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :roomchat_server, RoomchatServer.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "roomchat_server_dev",
  hostname: "localhost",
  pool_size: 10

  config :guardian, Guardian,
  secret_key: "LG17BzmhBeq81Yyyn6vH7GVdrCkQpLktol2vdXlBzkRRHpYsZwluKMG9r6fnu90m"
