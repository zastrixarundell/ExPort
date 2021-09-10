defmodule ExPort.Service.SpotifyServiceTest do
  use ExPort.DataCase

  alias ExPort.Services.SpotifyService
  alias ExPort.Accounts

  import ExPort.AccountsFixtures

  describe "reauth_token/1" do
    test "will generate a new token" do
      user = user_fixture()

      assert {:ok, user} = SpotifyService.reauth_user(user)

      assert user.spotify_token == "MY_NEW_TOKEN"
    end
  end

  describe "user_info/1" do
    test "can get user information" do
      user = user_fixture()
      assert {:ok, %{}} = SpotifyService.user_info(user)
    end
  end
end
