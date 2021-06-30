defmodule Delivery.Repo.Migrations.CreateOrderTable do
  use Ecto.Migration

  def change do

    create table(:orders) do
      add :date, :date
      add :status, :integer
      add :menu_id, references(:menus)
      add :product_id, references(:products)
    end
  end
end
