defmodule ExPortWeb.Components.SpotifyLiveComponent do
  use ExPortWeb, :live_component

  @impl true
  def render(assigns) do
    ~H"""
    <%= if @song do %>
      <div class="separator"></div>
      <div class="section-block section-header">
        <h2>Current Spotify activity</h2>
      </div>
      <div class="separator"></div>
      <section id="spotify-information">
        <div class="spotify-top">
          <img phx-hook="Thumbnail" id="spotify-thumbnail" class="song-thumbnail" src={ @song.thumbnail } alt="Cover Art">
          <div id="spotify-song-text" phx-hook="SpotifyText" class="song-text-block">
            <h1 id="song-title"><%= @song.song_name %></h1>
            <div class="song-description">
              <p id="song-artist">by <%= @song.artists %></p>
              <p id="song-album">on <%= @song.album_name %></p>
            </div>
          </div>
        </div>
        <div class="song-progress">
          <span class="current-progress"><%= @song.progress %></span>
          <div phx-hook="SpotifyProgressBar" id="song-progress-bar" { %{progress: "#{@song.progress_percent}%", progress_ms: @song.progress_ms, duration_ms: @song.song_duration_ms }}>
          </div>
          <span class="song-length"><%= @song.song_duration %></span>
        </div>
      </section>
      <script src={ ExPortWeb.Router.Helpers.static_path(@socket, "/assets/spotify.js") }></script>
    <% end %>
    """
  end
end
