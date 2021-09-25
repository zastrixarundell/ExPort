defmodule ExPort.Services.GithubApiBehaviour do
  @moduledoc """
  Behaviour module for the Github API
  """

  @doc """
  List user repos with an optional primary language.
  """
  @callback user_repos(username :: String.t(), language :: String.t() | nil) :: {:ok, list()} | {:error, non_neg_integer()}
end
