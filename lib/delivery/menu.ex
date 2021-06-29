defmodule Delivery.Menu do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "Menu" do
    field :name, :string
    field :description, :string
    field :price, :float
    field :quantity, :integer
    field :avaliable, :boolean

    timestamps()

  end
end
