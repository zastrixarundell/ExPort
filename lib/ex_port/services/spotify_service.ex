defmodule ExPort.Services.SpotifyService do
  @moduledoc """
  Main Spotify service module.
  """

  alias ExPort.Accounts.User
  alias ExPort.Accounts

  @spotify_service Application.get_env(:ex_port, :spotify)[:api_service]

  @doc """
  Regenerate a reauth token for a user.

  ## Examples

      iex> reauth_user(%User{})
      {:ok, %User{}}

      iex> reauth_user(nil)
      {:error, :nil_user}
  """
  @spec reauth_user(user :: User.t() | nil) :: {:ok, User.t()} | {:error, integer() | :nil_user}
  def reauth_user(nil), do: {:error, :nil_user}

  def reauth_user(user) do
    case @spotify_service.reauth_token(user.spotify_refresh_token) do
      {:ok, data} ->
        {:ok, new_user} =
          user
          |> Accounts.update_user(%{spotify_token: data["access_token"]})
          |> ExPort.Cache.UserCache.update_user()
        {:ok, new_user}

      data ->
        data
    end
  end

  @doc """
  Get the information about the current playing song which the user
  is listening to.

  ## Examples

      iex> currently_playing(%User{})
      {:ok, %{}}

      iex> currently_playing(%{})
      {:error, 404}
  """
  @spec currently_playing(user :: User.t()) :: {:ok, %{}} | {:error, integer()}
  def currently_playing(nil), do: {:error, 0}

  def currently_playing(user) do
    @spotify_service.currently_playing(user.spotify_token)
    |> ExPort.Serializer.SpotifySongSerializer.serialize!()
  end

  @doc """
  Subscribe to the Phoenix.PubSub server for when the
  user song state changes.
  """
  @spec subscribe_info :: none()
  def subscribe_info do
    Phoenix.PubSub.subscribe(ExPort.PubSub, "spotify_info")
  end

  @doc """
  Broadcast song info about a user.
  """
  @spec broadcast_info(%{} | nil) :: none()
  def broadcast_info(song) do
    Phoenix.PubSub.broadcast(ExPort.PubSub, "spotify_info", {:song, song})
  end

end
