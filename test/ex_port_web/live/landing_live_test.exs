defmodule ExPortWeb.LandingLiveTest do
  use ExPortWeb.ConnCase

  import Phoenix.LiveViewTest

  import ExPort.AccountsFixtures

  import Mox

  @path "/"

  setup :set_mox_from_context

  setup do
    Mox.stub_with(ExPort.SpotifyApiMock, ExPort.SpotifyApiStub)
    {:ok, pid} = start_supervised(ExPort.Cache.UserCache)

    user = user_fixture()
    ExPort.Cache.UserCache.update_user(user)

    Process.send(pid, :spotify_sync, [:nosuspend])

    %{cache: pid}
  end

  describe "connected and mounted" do
    test "when user is not cached", %{conn: conn, cache: pid} do
      ExPort.Cache.UserCache.update_user(nil)
      Process.send(pid, :spotify_sync, [:nosuspend])

      assert ExPort.Cache.UserCache.read_song(pid) == nil

      conn = get(conn, @path)
      assert html_response(conn, 200) =~ "<h1>Zastrix</h1>"

      {:ok, _view, html} = live(conn)

      refute html =~ "Demon Hunter"
    end

    test "when user is cached", %{conn: conn}  do
      conn = get(conn, @path)
      assert html_response(conn, 200) =~ "Demon Hunter"

      {:ok, _view, _html} = live(conn)
    end
  end

  test "handles Spotify PubSub broadcasts", %{conn: conn} do
    conn = get(conn, @path)

    {:ok, _view, html} = live(conn)
    assert html =~ "Demon Hunter"
  end
end
