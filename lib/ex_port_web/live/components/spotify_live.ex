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
              <span>2:30</span>
              <div class="song-progress-bar"></div>
              <span>5:00</span>
            </div>
          </div>
        </div>
        <div class="song-thumbnail">
          <img src={ @song.thumbnail } alt="Cover Art">
        </div>
      </section>
    <% end %>
    """
  end
end
