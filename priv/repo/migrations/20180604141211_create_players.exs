defmodule Ranker.Repo.Migrations.CreatePlayers do
  use Ecto.Migration

  def change do
    create table(:players) do
      add :name, :string
      add :rank, :integer

      timestamps()
    end

  end
end
