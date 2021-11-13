defmodule ExPortWeb.GithubController do
  use ExPortWeb, :controller

  alias ExPort.Services.GithubService

  def show(conn, params) do
    case GithubService.repositories("zastrixarundell", params["language"]) do
      {:ok, repos} ->
        conn
        |> assign(:repos, repos)
        |> render("show.html")

      {:error, code} ->
        conn
        |> put_flash(:error, "Failed to read repos with error code #{code}, try again later!")
        |> render("show.html")
    end
  end
end
