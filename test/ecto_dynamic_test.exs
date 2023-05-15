defmodule EctoDynamicTest do
    use EctoDynamicWeb.ConnCase

    import Ecto.Query
    alias EctoDynamic.Dynamic

    test "dynamic in dynamic call" do
      uuid = Ecto.UUID.generate()
      EctoDynamic.Repo.all(where(Dynamic, ^EctoDynamic.ids_greater_than(uuid, :id)))
    end
end
