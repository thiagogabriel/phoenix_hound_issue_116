defmodule PhoenixHoundIssue_116.PageController do
  use PhoenixHoundIssue_116.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
