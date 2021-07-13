defmodule Delivery.Delivery do
  use Ecto.Schema
  import Ecto.Changeset

  @required_params [
    :name,
    :phone,
    :email
]

  @primary_key {:id, :binary_id, autogenerate: true}


  schema "deliverys" do
    field :name, :string
    field :description, :string
    field :phone, :string
    field :email, :string

    timestamps()

  end


  def changeset(%{} = params) do
    %__MODULE__{}
    |> cast(params, @required_params)
    |> validate_format(:email, ~r/@/)
    |> validate_required(@required_params)
  end
end
