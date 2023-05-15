defmodule EctoDynamic.Dynamic do
  use Ecto.Schema

  @primary_key false
  schema "dynamic" do
    field :id, Ecto.UUID, primary_key: true

    timestamps()
  end
end
