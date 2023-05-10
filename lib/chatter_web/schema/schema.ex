defmodule ChatterWeb.Schema do
  use Absinthe.Schema

  import_types(ChatterWeb.Schema.Types)

  query do
    @desc "greeting"
    field :hello, :string do
      resolve(fn _, _, _ -> {:ok, "worlds"} end)
    end
  end

  mutation do
    field :register_user, :boolean do
      args(:input, non_null(:registration_input_type))
    end
  end
end
