defmodule Delivery.OrderProduct do
  use Ecto.Schema
  alias Delivery.{Product, Order}
  schema "order_products" do

    belongs_to :order, Order
    belongs_to :product, Product
  end
end
