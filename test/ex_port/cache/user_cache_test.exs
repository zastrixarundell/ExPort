defmodule ExPort.Cache.UserCacheTest do
  use ExPort.DataCase

  alias ExPort.Cache.UserCache
  alias ExPort.Accounts.User

  import ExPort.AccountsFixtures

  import Mox

  setup do
    UserCache.update_user(nil)
    :ok
  end

  setup do
    Mox.stub_with(ExPort.SpotifyApiMock, ExPort.SpotifyApiStub)
    :ok
  end

  setup :set_mox_from_context

  describe "read_user" do
    test "returns nil safely if user is not present" do
      {:ok, pid} = start_supervised({UserCache, [standalone: false]})
      assert UserCache.read_user(pid) == nil
    end

    test "returns user when saved" do
      user = user_fixture()
      UserCache.update_user(user)
      assert UserCache.read_user() == user
    end
  end

  describe "update_user" do
    test "does not raise error if user does not exist already" do
      user = user_fixture()
      UserCache.update_user(user)

      assert UserCache.read_user() == user
    end

    test "succesfully updates existing user" do
      user = user_fixture()
      UserCache.update_user(user)

      user = %User{user | spotify_token: "new token"}

      UserCache.update_user(user)

      assert UserCache.read_user() == user
    end
  end

  describe "song_data" do
    test "should have working info callbacks" do
      pid = GenServer.whereis(ExPort.Cache.UserCache)
      :erlang.trace(pid, true, [:receive])
      Process.send(pid, :spotify_sync, [:noconnect])

      assert_receive {:trace, ^pid, :receive, :spotify_sync}
    end

    test "can take information" do
      user = user_fixture()
      UserCache.update_user(user)

      pid = GenServer.whereis(ExPort.Cache.UserCache)
      :erlang.trace(pid, true, [:receive])
      Process.send(pid, :spotify_sync, [:nosuspend])

      assert %{} = UserCache.read_song()
    end

    test "reads information properly" do
      user = user_fixture()
      UserCache.update_user(user)

      pid = GenServer.whereis(ExPort.Cache.UserCache)
      :erlang.trace(pid, true, [:receive])
      Process.send(pid, :spotify_sync, [:nosuspend])

      song = UserCache.read_song()
      assert song["item"]["name"] =~ "My Throat"
    end
  end
end
