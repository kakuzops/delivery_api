defmodule Delivery.Order do
  use Ecto.Schema
  import Ecto.Changeset

  alias Delivery.{OrderProduct}

  @primary_key {:id, :binary_id, autogenarate: true}

  @required [
    :data,
    :status
  ]

  schema "orders" do
    field :data, :date
    field :status, :integer

    has_many :order_products, OrderProduct
  end

  def changeset(%{} = params) do
    %__MODULE__{}
    |> cast(params, @required)
    |> validate_format(:email, ~r/@/)
    |> validate_required(@required)
  end
end
