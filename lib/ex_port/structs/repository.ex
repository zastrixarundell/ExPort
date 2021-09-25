defmodule ExPort.Struct.Repository do

  @moduledoc """
  Module which represents repositories.
  """

  defstruct [
    :name,
    :language,
    :url,
    :archived,
    :forks,
    :stars
  ]

  @type t() :: %__MODULE__{
    name: String.t(),
    language: String.t(),
    url: String.t(),
    archived: boolean(),
    forks: non_neg_integer(),
    stars: non_neg_integer()
  }

  def from_array(elements) do
    elements
    |> List.wrap()
    |> Enum.map(&from_map/1)
  end

  def from_map(element) do
    %__MODULE__{
      name: element["name"],
      language: element["language"],
      url: element["html_url"],
      forks: element["forks"],
      stars: element["stargazers_count"]
    }
  end
end
