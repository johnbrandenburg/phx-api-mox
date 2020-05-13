ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(PhxApi.Repo, :manual)
Mox.defmock(PhxApi.HttpMock, for: PhxApi.HttpAdapter)
