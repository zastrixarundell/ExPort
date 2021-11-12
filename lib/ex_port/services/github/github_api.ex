defmodule ExPort.Services.GithubApi do
  @behaviour ExPort.Services.GithubApiBehaviour

  require Logger

  def user_repos(username, nil) do
    "https://api.github.com/search/repositories?q=user:#{username}"
    |> search_for_repos()
  end

  def user_repos(username, language) do
    "https://api.github.com/search/repositories?q=user:#{username}+language:#{language}"
    |> search_for_repos()
  end

  defp search_for_repos(query) do
    headers = [
      {"Content-Type", "application/json"}
    ]

    case HTTPoison.get(query, headers) do
      {:ok, %HTTPoison.Response{body: body, status_code: 200}} ->
        {:ok, Jason.decode!(body)["items"]}

      {:ok, %HTTPoison.Response{status_code: code, body: body}} ->
        Logger.warn("Github query failed with code #{code} and body: #{body}")
        {:error, code}
    end
  end
end
