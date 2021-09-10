defmodule ExPort.Service.SpotifyServiceTest do
  use ExPort.DataCase

  alias ExPort.Services.SpotifyService
  alias ExPort.Accounts

  import ExPort.AccountsFixtures

  describe "reauth_token/1" do
    test "will generate a new token" do
      user = user_fixture()

      assert {:ok, new_user} = SpotifyService.reauth_user(user)

      assert new_user.spotify_token != user.spotify_token
      assert new_user.spotify_token != nil
    end
  end

  describe "user_info/1" do
    test "can get user information" do
      user = user_fixture()
      assert {:ok, %{}} = SpotifyService.currently_playing(user)
    end

    test "can extract song information" do
      user = user_fixture()
      assert {:ok, data} = SpotifyService.currently_playing(user)
      assert data["item"]["album"]["name"] == "Demon Hunter"
    end
  end
end
