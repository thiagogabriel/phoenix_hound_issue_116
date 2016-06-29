defmodule PhoenixHoundIssue_116.MainTest do
  use PhoenixHoundIssue_116.ConnCase

  # Import Hound helpers
  use Hound.Helpers

  # Start a Hound session
  hound_session

  test "GET /" do
    navigate_to "/"
    click({:link_text, "Guides"})

    assert page_source =~ "happily"
  end
end
