defmodule ExPort.Services.GithubService do
  @api_module Application.get_env(:ex_port, :github)[:api_service]

  def repositories(username, language \\ nil) do
    @api_module.user_repos(username, language)
  end
end
