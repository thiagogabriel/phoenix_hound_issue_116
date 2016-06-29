Application.ensure_all_started(:hound)
ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixHoundIssue_116.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixHoundIssue_116.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixHoundIssue_116.Repo)

