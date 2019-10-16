defmodule DivisionWeb.ChatView do
  use DivisionWeb, :view

  def addressed_message?(message, username) do
    cond do
      String.contains?(message, "@#{username}") -> "addressed-message"
      true -> ""
    end
  end

  def avatar(user) do
    Division.Avatar.url({user.avatar, user}, :thumb, signed: true) |> img_tag(class: "avatar")
  end
end
