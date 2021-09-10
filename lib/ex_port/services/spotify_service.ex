defmodule ExPort.Services.SpotifyService do
  @moduledoc """
  Main Spotify service module.
  """

  alias ExPort.Accounts.User

  @spotify_service Application.get_env(:ex_port, :spotify)[:api_service]

  @doc """
  Regenerate a reauth token for a user.

  ## Examples

      iex> reauth_token(%User{})
      String.t()
  """
  @spec reauth_token(user :: User.t()) :: String.t()
  def reauth_token(user) do
    @spotify_service.reauth_token(user.spotify_token)
  end

  @doc """
  Get the information about the current playing song which the user
  is listening to.

  ## Examples

      iex> user_info(%User{})
      {:ok, %{}}

      iex> user_info(%{})
      {:error, 404}
  """
  @spec user_info(user :: User.t()) :: {:ok, %{}} | {:error, integer()}
  def user_info(user) do
    @spotify_service.user_info(user.spotify_token)
  end
end
