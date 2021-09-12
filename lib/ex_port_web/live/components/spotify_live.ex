defmodule ExPortWeb.Components.SpotifyLiveComponent do
  use Phoenix.LiveComponent

  @impl true
  def render(assigns) do
    ~H"""
    <%= if @song do %>
      <div class="section-divider-horizontal"></div>
      <section id="spotify-information" class="verical-flex">
        <div class="section-block section-header">
          <h2>Current Spotify activity</h2>
        </div>
        <div class="spotify-information">
          <div class="song-text">
            <div class="song-title">
              <h1 id="song-title"><%= @song.song_name %></h1>
            </div>
            <div class="song-information section-block">
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
        </div>
      </section>
      <script src={ ExPortWeb.Router.Helpers.static_path(@socket, "/assets/spotify.js") }></script>
    <% end %>
    """
  end
end
