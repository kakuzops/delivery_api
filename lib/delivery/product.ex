defmodule Delivery.Product do
  use Ecto.Schema
  import Ecto.Changeset

  @required [
    :name,
    :description,
    :price,
    :quantity,
  ]

  @primary_key {:id, :binary_id, autogenarate: true}

  schema "products" do
    field :name,        :string
    field :description, :string
    field :price,       :float
    field :quantity,    :integer
    field :complement,  :string
    field :options,     :string

    timestamps()

  end


  def changeset(%{} = params) do
    %__MODULE__{}
    |> cast(params, @required)
    |> validate_required(@required)
  end

end
