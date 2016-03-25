defmodule TagitApi.UserView do
  use TagitApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:email, :full_name, :is_admin]

end
