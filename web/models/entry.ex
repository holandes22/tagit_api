defmodule TagitApi.Entry do
  use TagitApi.Web, :model

  schema "entries" do
    field :link, :string
    field :notes, :string, default: ""
    field :is_favourite, :boolean, default: false
    field :archived, :boolean, default: false
    field :ranking, :integer, default: 1
    field :tags, {:array, :string}

    belongs_to :user, TagitApi.User

    timestamps
  end

  @required_fields ~w(link notes is_favourite archived ranking tags)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:tags, min: 1, max: 5)
  end
end
