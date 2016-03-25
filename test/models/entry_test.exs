defmodule TagitApi.EntryTest do
  use TagitApi.ModelCase

  alias TagitApi.Entry

  @valid_attrs %{archived: true, is_favourite: true, link: "some content", notes: "some content", ranking: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Entry.changeset(%Entry{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Entry.changeset(%Entry{}, @invalid_attrs)
    refute changeset.valid?
  end
end
