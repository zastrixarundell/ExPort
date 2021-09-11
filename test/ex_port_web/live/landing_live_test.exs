defmodule ExPortWeb.LandingLiveTest do
  use ExPortWeb.ConnCase

  import Phoenix.LiveViewTest

  import ExPort.AccountsFixtures

  @path "/"

  def wait_until(fun), do: wait_until(2_000, fun)

  def wait_until(10, fun), do: fun.()

  def wait_until(time, fun) do
    try do
      fun.()
    rescue
      ExUnit.AssertionError ->
        :timer.sleep(10)
        wait_until(max(0, time - 10), fun)
    end
  end

  test "connected mount", %{conn: conn} do
    conn = get(conn, @path)
    assert html_response(conn, 200) =~ "<h1>Zastrix</h1>"

    {:ok, _view, _html} = live(conn)
  end

  test "handles Spotify PubSub broadcasts", %{conn: conn} do
    Mox.stub_with(ExPort.SpotifyApiMock, ExPort.SpotifyApiStub)
    conn = get(conn, @path)

    wait_until(fn ->
      Mox.stub_with(ExPort.SpotifyApiMock, ExPort.SpotifyApiStub)
      {:ok, _view, html} = live(conn)
      assert html =~ "Demon Hunter"
    end)
  end
end
