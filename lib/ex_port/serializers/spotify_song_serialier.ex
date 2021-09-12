defmodule ExPort.Serializer.SpotifySongSerializer do

  @moduledoc """
  Serialier for spotify songs.
  """

  @doc """
  Serializes spotify song information to an atomic map. It pattern mathces for
  `%{"currently_playing_type" => "track"}` to detect if the data is a spotify song
  or else it will just pass through the argument.
  """
  @spec serialize!(any()) :: any()
  def serialize!({:ok, %{"currently_playing_type" => "track"} = song}) do
    ms_progress = song["progress_ms"]
    song_duration = song["item"]["duration_ms"]

    progress = (ms_progress * 100 / song_duration)  |> Float.round(1)

    data = %{
      song_name: song["item"]["name"],
      ms_progress: ms_progress,
      song_duration: song_duration,
      progress: progress,
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
