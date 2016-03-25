defmodule TagitApi.TagView do
  use TagitApi.Web, :view

  def render("index.json", %{tags: tags}) do
    %{data: render_many(tags, TagitApi.TagView, "tag.json")}
  end

  def render("show.json", %{tag: tag}) do
    %{data: render_one(tag, TagitApi.TagView, "tag.json")}
  end

  def render("tag.json", %{tag: tag}) do
    %{id: tag.id,
      name: tag.name,
      user_id: tag.user_id,
      entry_id: tag.entry_id}
  end
end
