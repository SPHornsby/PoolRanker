defmodule Ranker.Player do
  use Ecto.Schema
  import Ecto.Changeset


  schema "players" do
    field :name, :string
    field :rank, :integer

    timestamps()
  end

  @doc false
  def changeset(player, attrs) do
    player
    |> cast(attrs, [:name, :rank])
    |> validate_required([:name, :rank])
  end
end
