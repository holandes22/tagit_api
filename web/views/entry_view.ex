defmodule TagitApi.EntryView do
  use TagitApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:link, :notes, :is_favourite, :archived, :ranking, :tags]
  has_one :user, serializer: TagitApi.UserView, include: false

end
