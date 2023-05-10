defmodule ChatterWeb.Schema.Types do
  use Absinthe.Schema.Notation

  import_types(ChatterWeb.Schema.Types.UserType)
end
