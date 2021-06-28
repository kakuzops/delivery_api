defmodule Delivery.Delivery do
  use Ecto.Schema


  @primary_key {:id, :binary_id, autogenerate: true}


  schema "Delivery" do
    field :name, :string
    field :description, :string
    field :phone, :string
    field :email, :string

    timestamps()
  end
end
