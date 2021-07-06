defmodule Delivery.Repo.Migrations.CreateProductTable do
  use Ecto.Migration

  def change do
    create table(:products) do

      add :name,        :string
      add :description, :string
      add :price,       :float
      add :quantity,    :integer
      add :complement,  :string
      add :options,     :string

      timestamps()
    end
  end
end
