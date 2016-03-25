defmodule TagitApi.User do
  use TagitApi.Web, :model

  schema "users" do
    field :full_name, :string
    field :email, :string
    field :is_admin, :boolean, default: false

    has_many :entries, TagitApi.Entry

    timestamps
  end

  @required_fields ~w(full_name email is_admin)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
