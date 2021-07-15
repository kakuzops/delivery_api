defmodule DeliveryWeb.DeliverysView do
  use DeliveryWeb, :view

  alias Delivery.Delivery


  def render("create.json", %{delivery: %Delivery{} = delivery}) do
    %{
      message: "Delivery Created",
      delivery: delivery
    }
  end

end
