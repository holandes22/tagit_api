alias TagitApi.{Repo, User, Entry}

Repo.insert!(%User{full_name: "Aloth", email: "aloth@gilded_vale.poe", is_admin: true})
user = Repo.get User, 1

entries = [
  %{
    link: "http://a",
    notes: "aa",
    is_favourite: false,
    archived: false,
    ranking: 4,
    tags: ["elixir"]
  },
  %{
    link: "http://b",
    notes: "bb",
    is_favourite: false,
    archived: false,
    ranking: 4,
    tags: ["ember", "addon"]
  },
  %{
    link: "http://c",
    notes: "cc",
    is_favourite: true,
    archived: false,
    ranking: 5,
  }
]

Repo.transaction fn ->
  Enum.each(entries, fn(entry) ->
    new_entry = Ecto.build_assoc(user, :entries, Map.put(entry, :user_id, user.id))
    Repo.insert!(new_entry)
  end)
end
