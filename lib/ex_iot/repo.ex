defmodule ExIot.Repo do
  use Ecto.Repo,
    otp_app: :ex_iot,
    adapter: Ecto.Adapters.Postgres
end
