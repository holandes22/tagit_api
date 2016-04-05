defmodule TagitApi.Api.EntriesTest do
  use TagitApi.ConnCase

  alias TagitApi.Entry

  test "index all entries" do
    entries = create_list(3, :entry)
    response = conn
    |> get(entry_path(conn, :index))
    |> json_response(200)

    %{"data" => data} = response
    assert length(data) === 3
    IO.puts inspect(response)
    IO.puts inspect(entries)
    #conn
    #|> get(entry_path(conn, :index))
  end

end
