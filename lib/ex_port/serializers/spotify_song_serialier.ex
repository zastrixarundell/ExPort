defmodule ExPort.Serializer.SpotifySongSerializer do
  def serialize!({:ok, %{"currently_playing_type" => "track"} = song}) do
    data = %{
      song_name: song["item"]["name"],
      progress: song["progress_ms"],
      album_name: song["item"]["album"]["name"],
      paused: !song["is_playing"],
      artists: song["item"] ["album"]["artists"] |> Enum.map(& &1["name"]) |> Enum.join(", "),
      preview: song["item"]["preview_url"],
      url: song["item"]["external_urls"]["spotify"],
      thumbnail: song["item"]["album"]["images"] |> List.wrap() |> List.first() |> (& &1["url"]).()
    }
    {:ok, data}
  end

  def serialize!(passthrough), do: passthrough
end
