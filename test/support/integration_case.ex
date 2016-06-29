defmodule PhoenixHoundIssue_116.IntegrationCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Hound.Helpers

      import Ecto.Model
      import Ecto.Query, only: [from: 2]
      import PhoenixHoundIssue_116.Router.Helpers

      alias PhoenixHoundIssue_116.Repo

      # The default endpoint for testing
      @endpoint PhoenixHoundIssue_116.Endpoint

      hound_session
    end
  end

  setup(context \\ %{}) do
    Hound.start_session(Map.get(context, :hound_options, []))
    Hound.Helpers.Window.current_window_handle
    |> Hound.Helpers.Window.maximize_window

    :ok
  end

  setup tags do
    unless tags[:async] do
      Ecto.Adapters.SQL.restart_test_transaction(PhoenixHoundIssue_116.Repo, [])
    end

    :ok
  end
end
