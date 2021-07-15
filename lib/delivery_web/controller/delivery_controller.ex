defmodule DeliveryWeb.DeliveryController do
  use DeliveryWeb, :controller
  alias Delivery.Delivery

  def create(conn, params) do
    with {:ok, %Delivery{} = delivery} <- Delivery.create_delivery(params) do
      conn
      |> IO.inspect(delivery)
      |> put_status(:created)
      |> render("create.json", delivery: delivery)
    end
  end

end
