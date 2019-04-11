class Item < ApplicationRecord

  belongs_to :pizza_type
  belongs_to :order



  validates :pizza_type_id,  numericality: { greater_than: 0,less_than_or_equal_to: 5 }
  validates :quantity, numericality: { greater_than: 0,less_than_or_equal_to: 50 }
end
