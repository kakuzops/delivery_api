defmodule Delivery.Order do
  use Ecto.Schema
  alias Delivery.{OrderProduct}

  @primary_key {:id, :binary_id, autogenarate: true}

  schema "orders" do
    field :data, :date
    field :status, :integer

    has_many :order_products, OrderProduct
  end
end
