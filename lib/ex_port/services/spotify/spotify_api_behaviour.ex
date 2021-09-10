defmodule ExPort.Services.SpotifyApiBehaviour do
  @doc """
  Behaviour module for a spotify API web client.
  """

  @callback reauth_token(String.t()) :: {:ok, %{}} | {:error, integer()}

  @callback currently_playing(String.t()) :: {:ok, %{}} | {:error, integer()}

end
