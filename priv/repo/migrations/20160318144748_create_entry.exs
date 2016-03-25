defmodule TagitApi.Repo.Migrations.CreateEntry do
  use Ecto.Migration

  def change do
    create table(:entries) do
      add :link, :string
      add :notes, :string, default: ""
      add :is_favourite, :boolean, default: false
      add :archived, :boolean, default: false
      add :ranking, :integer, default: 1
      add :tags, {:array, :string}
      add :user_id, references(:users, on_delete: :nothing)

      timestamps
    end
    create index(:entries, [:user_id])

  end
end
