defmodule ExPort.Services.GithubService do
  @api_module Application.get_env(:ex_port, :github)[:api_service]

  alias ExPort.Struct.Repository

  def repositories(username, language \\ nil) do
    case @api_module.user_repos(username, language) do
      {:ok, repos} ->
        {:ok, repos |> Repository.from_map_array()}

      {:error, error} ->
        {:error, error}
    end
  end
end
