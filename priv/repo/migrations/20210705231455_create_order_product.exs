defmodule Delivery.Repo.Migrations.CreateOrderProduct do
  use Ecto.Migration

  def change do

    create table(:order_products) do
      add :order_id, references(:orders)
      add :product_id, references(:products)
      timestamps()
    end
  end
end
