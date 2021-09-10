defmodule ExPort.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :spotify_token, :string
      add :discord_token, :string
      add :github_token, :string

      timestamps()
    end
  end
end
