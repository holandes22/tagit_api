defmodule TagitApi.PageController do
  use TagitApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
