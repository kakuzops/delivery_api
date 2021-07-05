defmodule Delivery.Repo.Migrations.CreateDeliveryTable do
  use Ecto.Migration

  def change do
    create table (:deliverys) do

      add :name, :string
      add :description, :string
      add :phone, :string
      add :email, :string

      timestamps()
    end

    create unique_index(:deliverys, [:email])
  end

  def down do
    drop table("deliverys")
  end
end
