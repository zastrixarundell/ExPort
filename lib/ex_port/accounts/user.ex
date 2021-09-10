defmodule ExPort.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :discord_token, :string
    field :github_token, :string
    field :spotify_token, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:spotify_token, :discord_token, :github_token])
  end
end
