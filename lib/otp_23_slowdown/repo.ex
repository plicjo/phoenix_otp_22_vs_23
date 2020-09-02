defmodule Otp23Slowdown.Repo do
  use Ecto.Repo,
    otp_app: :otp_23_slowdown,
    adapter: Ecto.Adapters.Postgres
end
