defmodule Delivery.Product do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenarate: true}

  schema "products" do
    field :name,        :string
    field :description, :string
    field :price,       :float
    field :quantity,    :integer
    field :complement,  :string
    field :options,     :string

    timestamps()

  end

end
