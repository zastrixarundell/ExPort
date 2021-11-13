defmodule ExPort.Struct.Repository do

  @moduledoc """
  Module which represents repositories.
  """

  defstruct [
    :name,
    :language,
    :url,
    :archived,
    :description,
    :forks,
    :stars,
    :updated_at,
    :created_at,
  ]

  @type t() :: %ExPort.Struct.Repository{
    name: String.t(),
    language: String.t(),
    url: String.t(),
    description: String.t(),
    archived: boolean(),
    forks: non_neg_integer(),
    stars: non_neg_integer(),
    updated_at: DateTime.t(),
    created_at: DateTime.t()
  }


  @doc """
  Transform a GitHub API response array into an array of repositories.
  """
  @spec from_map_array(any) :: list(t())
  def from_map_array(elements) do
    elements
    |> List.wrap()
    |> Enum.map(&from_map/1)
    |> sort_array()
  end

  @doc """
  Transforms a map from GitHub into a propper repository struct.
  """
  @spec from_map(map()) :: t()
  def from_map(%{} = element) do
    %__MODULE__{
      archived: element["archived"],
      name: element["name"],
      language: element["language"],
      url: element["html_url"],
      description: element["description"],
      forks: element["forks"],
      stars: element["stargazers_count"],
      updated_at: DateTime.from_iso8601(element["updated_at"]) |> elem(1),
      created_at: DateTime.from_iso8601(element["created_at"]) |> elem(1),
    }
  end

  @doc """
  Sort the array of repositories with the defined priority order:

  * stars
  * forks
  * updated at
  * created at
  """
  @spec sort_array(elements :: list(t())) :: list(t())
  def sort_array(elements),
    do: Enum.sort_by(elements, &{-&1.stars, -&1.forks, -DateTime.to_unix(&1.updated_at), -DateTime.to_unix(&1.created_at)})
end
