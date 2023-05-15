defmodule EctoDynamic.Repo.Migrations.Dynamic do
  use Ecto.Migration

  def change do
    create table("dynamic", primary_key: false) do
      add :id, :uuid, primary_key: true

      timestamps()
    end
  end
end
