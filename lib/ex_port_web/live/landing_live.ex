defmodule ExPortWeb.LandingLive do
  use ExPortWeb, :live_view

  alias ExPort.Services.SpotifyService

  @impl true
  def mount(_params, _session, socket) do
    if connected?(socket), do: SpotifyService.subscribe_info()
    socket = assign(socket, song: ExPort.Cache.UserCache.read_song())
    {:ok, socket}
  end

  @impl true
  def handle_info({:song, song}, socket) do
    socket = update(socket, :song, fn _song -> song end)
    {:noreply, socket}
  end
end
