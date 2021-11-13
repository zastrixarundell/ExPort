defmodule ExPortWeb.GithubController do
  use ExPortWeb, :controller

  alias ExPort.Services.GithubService

  def show(conn, params) do
    language = params["language"]

    case GithubService.repositories("zastrixarundell", language) do
      {:ok, repos} ->
        conn
        |> assign(:repos, repos)
        |> assign(:present_language, present_language?(language))
        |> assign(:language, (if present_language?(language), do: String.capitalize(language), else: language))
        |> render("show.html")

      {:error, code} ->
        conn
        |> put_flash(:error, "Failed to read repos with error code #{code}, try again later!")
        |> redirect(to: "/")
    end
  end

  defp present_language?(nil), do: false

  defp present_language?(data) when is_bitstring(data), do: true

  defp present_language?(_), do: false
end
