defmodule RoomchatServer.UserView do
  use RoomchatServer.Web, :view

  def render("user.json", %{user: user}) do
    %{
      id: user.id,
      username: user.username,
      email: user.email,
      }
  end
end
