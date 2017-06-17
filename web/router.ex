defmodule RoomchatServer.Router do
  use RoomchatServer.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RoomchatServer do
    pipe_through :api
  end
end
