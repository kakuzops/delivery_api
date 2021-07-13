defmodule Delivery.User do
  use Ecto.Schema
  import Ecto.Changeset


  @primary_key {:id, :binary_id, autogenarate: true}
  @required [
    :name,
    :address,
    :phone,
    :email
  ]

  schema "users" do
    field :name,      :string
    field :address,   :string
    field :phone,     :string
    field :email,     :string

    timestamps()
  end

  def changeset(%{} = params) do
    %__MODULE__{}
    |> cast(params, @required)
    |> validate_format(:email, ~r/@/)
    |> validate_required(@required)
  end

end
