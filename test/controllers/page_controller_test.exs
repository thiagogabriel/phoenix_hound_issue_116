defmodule PhoenixHoundIssue_116.PageControllerTest do
  use PhoenixHoundIssue_116.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
