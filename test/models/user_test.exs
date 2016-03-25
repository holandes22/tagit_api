defmodule TagitApi.UserTest do
  use TagitApi.ModelCase

  alias TagitApi.User

  @valid_attrs %{email: "some content", full_name: "some content", is_admin: true}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
