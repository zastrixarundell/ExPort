defmodule ExPort.Services.SpotifyApi do
  @behaviour ExPort.Services.SpotifyApiBehaviour

  @api_client Application.get_env(:ex_port, :spotify)[:api_client]
  @api_secret Application.get_env(:ex_port, :spotify)[:api_secret]
  @api_auth   Base.url_encode64("#{@api_client}:#{@api_secret}")

  def reauth_token(_token) do
    "hello world"
  end

  def user_info(_token) do
    {:ok, %{}}
  end
end
