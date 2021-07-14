defmodule Delivery.Deliverys.Create do
  alias Delivery.{Delivery, Repo}

  def call(%{} = params) do
    params
    |> Delivery.changeset()
    |> Repo.insert()
  end

  def call(_anything), do: "Enter the data in a map format"
end
