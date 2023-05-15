defmodule EctoDynamic.Repo do
  use Ecto.Repo,
    otp_app: :ecto_dynamic,
    adapter: Ecto.Adapters.Postgres
end
