defmodule ExPort.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ExPort.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, %ExPort.Accounts.User{} = user} =
      attrs
      |> Enum.into(%{
        spotify_token:         Faker.String.base64(50),
        spotify_refresh_token: Faker.String.base64(50),
        discord_token:         Faker.String.base64(50),
        discord_refresh_token: Faker.String.base64(50),
        github_token:          Faker.String.base64(50),
        github_refresh_token:  Faker.String.base64(50)
      })
      |> ExPort.Accounts.create_user()

    user
  end
end
