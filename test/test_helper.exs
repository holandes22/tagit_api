ExUnit.start

Mix.Task.run "ecto.create", ~w(-r TagitApi.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r TagitApi.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(TagitApi.Repo)

