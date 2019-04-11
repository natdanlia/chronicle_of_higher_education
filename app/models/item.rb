class Item < ApplicationRecord
  belongs_to :pizza_type
  belongs_to :order
end
