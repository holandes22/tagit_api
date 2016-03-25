defmodule TagitApi.EntryTest do
  use TagitApi.ModelCase
  import ValidField

  alias TagitApi.Entry

  @valid_tags ~w(ember addon)
  @invalid_tags ~w(too long more than five tags)

  test "validations" do
    %Entry{}
    |> with_changeset()
    |> assert_field(:tags, [@valid_tags], [@invalid_tags, nil])
    |> assert_field(:link, ["blah"], [nil])
  end

end
