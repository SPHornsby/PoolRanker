defmodule RankerWeb.PlayerController do
  use RankerWeb, :controller

  alias Ranker.Player
  alias Ranker.Repo

  def index(conn, _params) do
    players = Repo.all(Player)
    render conn, "index.html", players: players
  end

  def new(conn, _params) do
    changeset = Player.changeset(%Player{}, %{})

    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"player" => player}) do
    changeset = Player.changeset(%Player{}, player)

    case Repo.insert(changeset) do
      {:ok, _player} ->
        conn
        |> put_flash(:info, "Player Added")
        |> redirect(to: page_path(conn, :index))
      {:error, changeset} ->
        render conn, "new.html", changeset: changeset
    end
  end

end