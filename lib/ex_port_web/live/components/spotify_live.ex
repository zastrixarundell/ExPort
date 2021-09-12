defmodule ExPortWeb.Components.SpotifyLiveComponent do
  use Phoenix.LiveComponent

  @impl true
  def render(assigns) do
    ~H"""
    <%= if @song do %>
      <section id="spotify-information" class= "spotify-information">
        <div class="song-text">
          <div class="song-title">
            <h1 id="song-title"><%= @song.song_name %></h1>
          </div>
          <div class="song-information">
            <p id="song-artist">by <%= @song.artists %></p>
            <p id="song-album">on <%= @song.album_name %></p>
            <div class="song-progress">
              <span class="current-progress"><%= @song.progress %></span>
              <div id="song-progress-bar" { %{progress: "#{@song.progress_percent}%", progress_ms: @song.progress_ms, duration_ms: @song.song_duration_ms }}>
              </div>
              <span class="song-length"><%= @song.song_duration %></span>
            </div>
          </div>
        </div>
        <div class="song-thumbnail">
          <img src={ @song.thumbnail } alt="Cover Art">
        </div>
      </section>
      <script src={ ExPortWeb.Router.Helpers.static_path(@socket, "/assets/spotify.js") }></script>
    <% end %>
    """
  end
end
