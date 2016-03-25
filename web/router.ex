defmodule TagitApi.Router do
  use TagitApi.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
    #plug JaSerializer.ContentTypeNegotiation
    plug JaSerializer.Deserializer
  end

  scope "/api", TagitApi do
    pipe_through :api

    resources "/users", UserController
    resources "/entries", EntryController, only: [:index, :show]

  end

end
