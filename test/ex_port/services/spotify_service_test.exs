defmodule ExPort.Service.SpotifyServiceTest do
  use ExPort.DataCase, async: true

  alias ExPort.Services.SpotifyService
  alias ExPort.Accounts

  import ExPort.AccountsFixtures
  import Mox

  setup do
    Mox.stub_with(ExPort.SpotifyApiMock, ExPort.SpotifyApiStub)
    :ok
  end

  describe "reauth_token/1" do
    test "will generate a new token" do
      user = user_fixture()

      assert {:ok, new_user} = SpotifyService.reauth_user(user)

      assert new_user.spotify_token != user.spotify_token
      assert new_user.spotify_token != nil
    end

    test "will give a known tuple for an error" do
      ExPort.SpotifyApiMock
      |> expect(:reauth_token, 1, fn _ -> {:error, 403} end)

      user = user_fixture()

      assert {:error, 403} = SpotifyService.reauth_user(user)
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
