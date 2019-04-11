class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :total_price_after_tax
  has_many :items
  has_many :pizza_types, through: :items


  def total_price
    price = 0
     object.items.each do |item|
      price += item.pizza_type.price * item.quantity
    end
    price
  end

  def total_price_after_tax
    (total_price + total_price * 0.07).round(2)

  end

end
