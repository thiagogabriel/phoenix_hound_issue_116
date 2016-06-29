defmodule PhoenixHoundIssue_116.MainTest do
  use PhoenixHoundIssue_116.IntegrationCase

  test "GET /" do
    navigate_to "/"
    click({:link_text, "Google"})
  end
end
