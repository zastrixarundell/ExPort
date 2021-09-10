defmodule ExPortWeb.PageControllerTest do
  use ExPortWeb.ConnCase

  describe "GET /" do
    test "renders working html", %{conn: conn} do
      conn = get(conn, "/")
    assert html_response(conn, 200) =~ "ExPort"
    end
  end
end
