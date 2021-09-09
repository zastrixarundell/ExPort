defmodule ExPortWeb.PageController do
  use ExPortWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
