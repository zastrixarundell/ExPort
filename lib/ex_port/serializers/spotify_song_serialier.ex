defmodule ExPort.Serializer.SpotifySongSerializer do

  alias ExPort.Struct.Song

  @moduledoc """
  Serialier for spotify songs.
  """

  @doc """
  Serializes spotify song information to an atomic map. It pattern mathces for
  `%{"currently_playing_type" => "track"}` to detect if the data is a spotify song
  or else it will just pass through the argument.
  """
  @spec serialize!(any()) :: any()
  def serialize!({:ok, %{"currently_playing_type" => "track", "is_playing" => true} = song}) do
    ms_progress = song["progress_ms"]
    song_duration = song["item"]["duration_ms"]

    progress = (ms_progress * 100 / song_duration)  |> Float.round(1)

    data = %Song{
      song_name: song["item"]["name"],
      progress: normalize_ms(ms_progress),
      progress_ms: ms_progress,
      song_duration: normalize_ms(song_duration),
      song_duration_ms: song_duration,
      progress_percent: progress,
      album_name: song["item"]["album"]["name"],
      artists: song["item"]["artists"] |> Enum.map(& &1["name"]) |> Enum.join(", "),
      thumbnail: song["item"]["album"]["images"] |> List.wrap() |> List.first() |> (& &1["url"]).()
    }

    {:ok, data}
  end

  def serialize!({:ok, _}), do: {:ok, nil}

  def serialize!(passthrough), do: passthrough

  @dialyzer {:no_return, {:normalize_ms, 1}}

  @doc """
  Normalizes ms to readable time.

    ## Examples

      iex> ExPort.Serializer.SpotifySongSerializer.normalize_ms(60_000)
      "1:00"

      iex> ExPort.Serializer.SpotifySongSerializer.normalize_ms(321_000)
      "5:21"

      iex> ExPort.Serializer.SpotifySongSerializer.normalize_ms(3_640_000)
      "1:00:40"
  """
  @spec normalize_ms(non_neg_integer()) :: String.t()
  def normalize_ms(ms) when ms < 60_000 do
    ~T[00:00:00]
    |> Time.add(ms, :millisecond)
    |> Calendar.strftime("0:%S")
  end

  def normalize_ms(ms) do
    ~T[00:00:00]
    |> Time.add(ms, :millisecond)
    |> Calendar.strftime("%H:%M:%S")
    |> String.trim_leading("00:")
    |> String.trim_leading("0")
  end
end
