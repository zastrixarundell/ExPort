defmodule ExPortWeb.LandingLiveTest do
  use ExPortWeb.ConnCase

  import Phoenix.LiveViewTest

  @path "/"

  test "connected mount", %{conn: conn} do
    conn = get(conn, @path)
    assert html_response(conn, 200) =~ "<h1>Zastrix</h1>"

    {:ok, _view, _html} = live(conn)
  end
end
