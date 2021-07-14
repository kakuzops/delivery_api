defmodule DeliveryWeb.DeliveryController do
  use DeliveryWeb, :controller

  def create(_conn, params) do
    Delivery.create_delivery(params)
  end

end
