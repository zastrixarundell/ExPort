defmodule ExPort.Repo do
  use Ecto.Repo,
    otp_app: :ex_port,
    adapter: Ecto.Adapters.Postgres
end
