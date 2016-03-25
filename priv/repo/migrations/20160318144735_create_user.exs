defmodule TagitApi.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :full_name, :string
      add :email, :string
      add :is_admin, :boolean, default: false

      timestamps
    end

  end
end
