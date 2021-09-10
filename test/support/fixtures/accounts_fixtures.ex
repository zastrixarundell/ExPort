defmodule ExPort.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ExPort.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        discord_token: "some discord_token",
        github_token: "some github_token",
        spotify_token: "some spotify_token"
      })
      |> ExPort.Accounts.create_user()

    user
  end
end
