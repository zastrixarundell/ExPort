defmodule ExPort.SpotifySongSerializerTest do
  use ExUnit.Case, async: true

  alias ExPort.Serializer.SpotifySongSerializer, as: Serializer

  doctest Serializer

  test "can serialize song information" do
    response = ExPort.SpotifyApiStub.currently_playing(nil)

    assert {:ok, song} = Serializer.serialize!(response)

    assert song.progress == "1:28"
    assert song.album_name == "Demon Hunter"
  end

  test "passes through everything else" do
    assert nil == Serializer.serialize!(nil)
  end

end
