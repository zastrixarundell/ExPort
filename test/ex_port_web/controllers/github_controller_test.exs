defmodule ExPortWeb.GithubControllerTest do
  use ExPortWeb.ConnCase

  setup do
    Mox.stub_with(ExPort.GithubApiMock, ExPort.GithubApiStub)
    :ok
  end

  describe "show" do
    test "lists repos with the 'elixir' keyword", %{conn: conn} do
      conn = get(conn, Routes.github_path(conn, :show, language: "Elixir"))
      assert html_response(conn, 200) =~ "Catlixir"
    end

    test "lists repos with the 'java' keyword", %{conn: conn} do
      conn = get(conn, Routes.github_path(conn, :show, language: "Java"))
      assert html_response(conn, 200) =~ "Toram"
    end

    test "lists repos without a keyword", %{conn: conn} do
      conn = get(conn, Routes.github_path(conn, :show))
      assert html_response(conn, 200) =~ "Catlixir"
      assert html_response(conn, 200) =~ "Toram"
    end
  end
end
