defmodule TagitApi.Factory do
  use ExMachina.Ecto, repo: TagitApi.Repo

  alias TagitApi.{User, Entry}

  def factory(:user) do
    %User{
      full_name: "Kana Rua",
      email: "kana.rua@caed.nua.poe"
    }
  end

  def factory(:entry) do
    %Entry{
      link: sequence(:link, &"http://site#{&1}.com"),
      notes: "some short note",
      is_favourite: false,
      archived: false,
      ranking: 3,
      tags: ["tag1", "tag2"],
      user: build(:user)
    }
  end
end
