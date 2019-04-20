defmodule NspeckBackend.Repo do
  use Ecto.Repo,
    otp_app: :nspeck_backend,
    adapter: Ecto.Adapters.Postgres
end
