defmodule EctoDynamic do
  @moduledoc """
  EctoDynamic keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  import Ecto.Query

  def ids_greater_than(id, column) do
    dynamic([query], ^field_query(column) > ^id and true)
  end

  def field_query(column) do
    dynamic([query], field(query, ^column))
  end
end
