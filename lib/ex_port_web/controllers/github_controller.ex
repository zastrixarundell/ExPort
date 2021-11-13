defmodule ExPortWeb.GithubController do
  use ExPortWeb, :controller

  alias ExPort.Services.GithubService

  def show(conn, %{"language" => language}) do
    language = String.capitalize(language)

    case GithubService.repositories("zastrixarundell", language) do
      {:ok, repos} ->
        conn
        |> assign(:repos, repos)
        |> assign(:present_language, true)
        |> assign(:language, language)
        |> assign(:page_title, "Specific user repos")
        |> assign(:page_suffix, " // #{language}")
        |> render("show.html")

      {:error, code} ->
        conn
        |> put_flash(:error, "Failed to read repos with error code #{code}, try again later!")
        |> redirect(to: "/")
    end
  end

  def show(conn, _) do
    case GithubService.repositories("zastrixarundell") do
      {:ok, repos} ->
        conn
        |> assign(:repos, repos)
        |> assign(:present_language, false)
        |> assign(:language, nil)
        |> assign(:page_title, "All user repos")
        |> render("show.html")

      {:error, code} ->
        conn
        |> put_flash(:error, "Failed to read repos with error code #{code}, try again later!")
        |> redirect(to: "/")
    end
  end
end
