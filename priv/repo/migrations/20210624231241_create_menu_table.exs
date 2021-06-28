defmodule Delivery.Repo.Migrations.CreateMenuTable do
  use Ecto.Migration

  def change do

    create table :menu do

      add :menuId,      :uuid
      add :name,        :string
      add :description, :string
      add :price,       :float
      add :quantity,    :integer
      add :avaliable,   :bool

      timestamps()
    end
  end
end
