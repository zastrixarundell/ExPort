defmodule ExPort.Service.SpotifyServiceTest do
  use ExPort.DataCase, async: true

  alias ExPort.Services.SpotifyService

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

    test "will not raise if the user is nil" do
      assert {:error, :nil_user} = SpotifyService.reauth_user(nil)
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
      assert data.artists == "Demon Hunter"
    end
  end

  describe "subscription/1" do
    test "subscribes to the Phoenix.PubSub module" do
      SpotifyService.subscribe_info()

      song_map = %{"message" => "test"}

      SpotifyService.broadcast_info(song_map)
      assert_received {:song, ^song_map}
    end
  end
end
Enemy
