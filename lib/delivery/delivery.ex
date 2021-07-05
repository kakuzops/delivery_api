defmodule Delivery.Delivery do
  use Ecto.Schema
  alias Delivery.{Order}

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "deliverys" do
    field :name, :string
    field :description, :string
    field :phone, :string
    field :email, :string

    has_many :orders, Order

    timestamps()

  end
end
