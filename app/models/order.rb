class Order < ApplicationRecord
  has_many :items
  has_many :pizza_types, through: :items
end
