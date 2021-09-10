defmodule ExPort.Services.SpotifyApiBehaviour do
  @doc """
  Behaviour module for a spotify API web client.
  """

  @callback reauth_token(String.t()) :: {:ok, %{}} | {:error, integer()}

  @callback user_info(String.t()) :: {:ok, %{}} | {:error, integer()}

end
