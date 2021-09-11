defmodule ExPort.Services.SpotifyApi do
  @behaviour ExPort.Services.SpotifyApiBehaviour

  @api_client Application.get_env(:ex_port, :spotify)[:api_client]
  @api_secret Application.get_env(:ex_port, :spotify)[:api_secret]
  @authorization   Base.url_encode64("#{@api_client}:#{@api_secret}")

  require Logger

  def reauth_token(token) do
    request_reauth(token)
  end

  @token_link "https://accounts.spotify.com/api/token"

  defp request_reauth(token) do
    headers = [
      {"Authorization", "Basic #{@authorization}"},
      {"Content-Type", "application/x-www-form-urlencoded"}
    ]

    params = %{
      grant_type: "refresh_token",
      refresh_token: token
    }

    case HTTPoison.post(@token_link, "", headers, params: params) do
      {:ok, %HTTPoison.Response{body: body, status_code: 200}} ->
        {:ok, Jason.decode!(body)}

      {:ok, %HTTPoison.Response{status_code: code, body: body}} ->
        Logger.warn("Spotify reauth failed with: #{body}")
        {:error, code}
    end
  end

  def currently_playing(token) do
    request_currently_playing(token)
  end

  @currently_playing "https://api.spotify.com/v1/me/player/currently-playing"

  defp request_currently_playing(token) do
    headers = [
      {"Authorization", "Bearer #{token}"},
      {"Content-Type", "application/x-www-form-urlencoded"}
    ]

    case HTTPoison.get(@currently_playing, headers) do
      {:ok, %HTTPoison.Response{body: body, status_code: 200}} ->
        {:ok, Jason.decode!(body)}

      {:ok, %HTTPoison.Response{status_code: code, body: body}} ->
        Logger.warn("Spotify song info failed with: #{body}")
        {:error, code}
    end
  end
end
