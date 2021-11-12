defmodule ExPort.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :spotify_token, :string
    field :spotify_refresh_token, :string
    field :discord_token, :string
    field :discord_refresh_token, :string
    field :github_token, :string
    field :github_refresh_token, :string

    timestamps()
  end

  @type t() :: %__MODULE__{
    spotify_token: String.t(),
    spotify_refresh_token: String.t(),
    discord_token: String.t(),
    discord_refresh_token: String.t(),
    github_token: String.t(),
    github_refresh_token: String.t(),
    updated_at: DateTime.t(),
    inserted_at: DateTime.t()
  }

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:spotify_token, :discord_token, :github_token, :spotify_refresh_token,
                    :discord_refresh_token, :github_refresh_token]
      )
  end
end
