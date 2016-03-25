defmodule TagitApi.EntryController do
  use TagitApi.Web, :controller

  alias TagitApi.{Entry, EntryView}

  plug :scrub_params, "entry" when action in [:create, :update]

  def index(conn, _params) do
    entries = preload(Entry, [:user]) |> Repo.all
    render(conn, EntryView, :index, data: entries)
  end

  def show(conn, %{"id" => id}) do
    entry = preload(Entry, [:user]) |> Repo.get!(id)
    render(conn, EntryView, :show, data: entry)
  end

end
