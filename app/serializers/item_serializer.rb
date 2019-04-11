class ItemSerializer < ActiveModel::Serializer
  attributes  :id, :order_id, :quantity,:pizza_type, :order_id

  belongs_to :pizza_type
  # belongs_to :order

  def pizza_type
    PizzaType.find(object.pizza_type_id)
  end


end
