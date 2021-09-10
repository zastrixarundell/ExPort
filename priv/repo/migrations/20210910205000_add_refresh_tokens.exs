defmodule ExPort.Repo.Migrations.AddRefreshTokens do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :spotify_refresh_token, :string
      add :discord_refresh_token, :string
      add  :github_refresh_token, :string
    end
  end
end
