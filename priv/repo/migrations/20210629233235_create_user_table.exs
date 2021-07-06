defmodule Delivery.Repo.Migrations.CreateUserTable do
  use Ecto.Migration

  def change do
    create table(:users) do

      add :name,        :string
      add :address,     :string
      add :phone,       :string
      add :email,       :string

      timestamps()
    end
  end
end
