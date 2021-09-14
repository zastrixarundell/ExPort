defmodule ExPort.Struct.Song do
  defstruct [
    :song_name,
    :progress,
    :progress_ms,
    :song_duration,
    :song_duration_ms,
    :progress_percent,
    :album_name,
    :artists,
    :preview,
    :url,
    :thumbnail
  ]

  @type t() :: %__MODULE__{
    song_name: String.t(),
    progress: String.t(),
    progress_ms: non_neg_integer(),
    song_duration: String.t(),
    song_duration_ms: non_neg_integer(),
    progress_percent: String.t(),
    album_name: String.t(),
    artists: String.t(),
    preview: String.t(),
    url: String.t(),
    thumbnail: String.t()
  }
end
