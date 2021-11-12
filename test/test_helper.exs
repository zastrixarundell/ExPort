ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(ExPort.Repo, :manual)

Mox.defmock(ExPort.SpotifyApiMock, for: ExPort.Services.SpotifyApiBehaviour)
Mox.defmock(ExPort.GithubApiMock, for: ExPort.Services.GithubApiBehaviour)
