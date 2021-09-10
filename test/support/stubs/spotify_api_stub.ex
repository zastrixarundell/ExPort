defmodule ExPort.SpotifyApiStub do
  @behaviour ExPort.Services.SpotifyApiBehaviour

  @spec currently_playing(any()) :: {:ok, %{}}
  def currently_playing(_) do
    {:ok,
     %{
       "actions" => %{"disallows" => %{"resuming" => true}},
       "context" => %{
         "external_urls" => %{
           "spotify" => "https://open.spotify.com/album/6ObTmkGHja5lweUNUsMjDM"
         },
         "href" => "https://api.spotify.com/v1/albums/6ObTmkGHja5lweUNUsMjDM",
         "type" => "album",
         "uri" => "spotify:album:6ObTmkGHja5lweUNUsMjDM"
       },
       "currently_playing_type" => "track",
       "is_playing" => true,
       "item" => %{
         "album" => %{
           "album_type" => "album",
           "artists" => [
             %{
               "external_urls" => %{
                 "spotify" => "https://open.spotify.com/artist/6f3a43i1MJZwdjEpV1M0oH"
               },
               "href" => "https://api.spotify.com/v1/artists/6f3a43i1MJZwdjEpV1M0oH",
               "id" => "6f3a43i1MJZwdjEpV1M0oH",
               "name" => "Demon Hunter",
               "type" => "artist",
               "uri" => "spotify:artist:6f3a43i1MJZwdjEpV1M0oH"
             }
           ],
           "available_markets" => [
             "AD",
             "AE",
             "AG",
             "AL"
           ],
           "external_urls" => %{
             "spotify" => "https://open.spotify.com/album/6ObTmkGHja5lweUNUsMjDM"
           },
           "href" => "https://api.spotify.com/v1/albums/6ObTmkGHja5lweUNUsMjDM",
           "id" => "6ObTmkGHja5lweUNUsMjDM",
           "images" => [
             %{
               "height" => 640,
               "url" => "https://i.scdn.co/image/ab67616d0000b2733a17511ac728819a7c85e7f0",
               "width" => 640
             },
             %{
               "height" => 300,
               "url" => "https://i.scdn.co/image/ab67616d00001e023a17511ac728819a7c85e7f0",
               "width" => 300
             },
             %{
               "height" => 64,
               "url" => "https://i.scdn.co/image/ab67616d000048513a17511ac728819a7c85e7f0",
               "width" => 64
             }
           ],
           "name" => "Demon Hunter",
           "release_date" => "2002",
           "release_date_precision" => "year",
           "total_tracks" => 10,
           "type" => "album",
           "uri" => "spotify:album:6ObTmkGHja5lweUNUsMjDM"
         },
         "artists" => [
           %{
             "external_urls" => %{
               "spotify" => "https://open.spotify.com/artist/6f3a43i1MJZwdjEpV1M0oH"
             },
             "href" => "https://api.spotify.com/v1/artists/6f3a43i1MJZwdjEpV1M0oH",
             "id" => "6f3a43i1MJZwdjEpV1M0oH",
             "name" => "Demon Hunter",
             "type" => "artist",
             "uri" => "spotify:artist:6f3a43i1MJZwdjEpV1M0oH"
           }
         ],
         "available_markets" => [
           "AD",
           "AE",
           "AG",
           "AL",
           "AM"
         ],
         "disc_number" => 1,
         "duration_ms" => 234_240,
         "explicit" => false,
         "external_ids" => %{"isrc" => "USTN10217473"},
         "external_urls" => %{
           "spotify" => "https://open.spotify.com/track/1fxGiMKEpcqTvyLEmdtWK4"
         },
         "href" => "https://api.spotify.com/v1/tracks/1fxGiMKEpcqTvyLEmdtWK4",
         "id" => "1fxGiMKEpcqTvyLEmdtWK4",
         "is_local" => false,
         "name" => "My Throat Is an Open Grave",
         "popularity" => 26,
         "preview_url" =>
           "https://p.scdn.co/mp3-preview/4fd1da7eaf0f14563c808e739f00a6180301d487?cid=60774a821b424149a5d9c4d5dd5a1f55",
         "track_number" => 4,
         "type" => "track",
         "uri" => "spotify:track:1fxGiMKEpcqTvyLEmdtWK4"
       },
       "progress_ms" => 88410,
       "timestamp" => 1_631_312_721_302
     }}
  end

  @spec reauth_token(any) ::
          {:ok, %{}}
  def reauth_token(_) do
    {:ok,
     %{
       "access_token" =>
         "BQAe6xOdCarOMf1JArcmGKW-BhsreGHnxgq7xF6kEjdgcXUW6s4XRpGUs7bbRAaYayuNamezrcafaAHpiLTwyY6tgPhr5FJCigzfyjQj9cZqcoF8Vzxk7WshJxHNXfORlxtZhVnrryHVJV4ULLgeZg9xN8YkDc-rYJywzyedby1G",
       "expires_in" => 3600,
       "scope" => "user-read-currently-playing user-top-read",
       "token_type" => "Bearer"
     }}
  end
end
