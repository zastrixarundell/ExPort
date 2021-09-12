defmodule ExPort.Cache.UserCacheTest do
  use ExPort.DataCase

  alias ExPort.Cache.UserCache
  alias ExPort.Accounts.User

  import ExPort.AccountsFixtures

  import Mox

  setup do
    Mox.stub_with(ExPort.SpotifyApiMock, ExPort.SpotifyApiStub)
    {:ok, pid} = start_supervised({UserCache, standalone: false})
    %{cache: pid}
  end

  setup :set_mox_from_context

  describe "read_user" do
    test "returns nil safely if user is not present", %{cache: pid} do
      assert UserCache.read_user(pid) == nil
    end

    test "returns user when saved", %{cache: pid} do
      user = user_fixture()
      UserCache.update_user(user, pid)
      assert UserCache.read_user(pid) == user
    end
  end

  describe "update_user" do
    test "does not raise error if user does not exist already", %{cache: pid} do
      user = user_fixture()
      UserCache.update_user(user, pid)

      assert UserCache.read_user(pid) == user
    end

    test "succesfully updates existing user", %{cache: pid} do
      user = user_fixture()
      UserCache.update_user(user, pid)

      user = %User{user | spotify_token: "new token"}

      UserCache.update_user(user, pid)

      assert UserCache.read_user(pid) == user
    end
  end

  describe "song_data" do
    test "should have working info callbacks", %{cache: pid} do
      :erlang.trace(pid, true, [:receive])
      Process.send(pid, :spotify_sync, [:noconnect])

      assert_receive {:trace, ^pid, :receive, :spotify_sync}
    end

    test "can take information", %{cache: pid} do
      user = user_fixture()
      UserCache.update_user(user, pid)

      :erlang.trace(pid, true, [:receive])
      Process.send(pid, :spotify_sync, [:nosuspend])

      assert %{} = UserCache.read_song(pid)
    end

    test "reads information properly", %{cache: pid} do
      user = user_fixture()
      UserCache.update_user(user, pid)

      :erlang.trace(pid, true, [:receive])
      Process.send(pid, :spotify_sync, [:nosuspend])

      song = UserCache.read_song(pid)
      assert song.song_name =~ "My Throat"
    end
  end

  describe "PubSub events" do
    test "broadcasts PubSub events", %{cache: pid} do
      ExPort.Services.SpotifyService.subscribe_info()

      user = user_fixture()
      UserCache.update_user(user, pid)
      Process.send(pid, :spotify_sync, [:nosuspend])
      song = UserCache.read_song(pid)

      assert_received {:song, ^song}
    end
  end
end
