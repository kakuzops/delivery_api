defmodule Delivery.User do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenarate: true}

  schema "users" do
    field :name,      :string
    field :address,   :string
    field :phone,     :string
    field :email,     :string

    timestamps()
  end
end
