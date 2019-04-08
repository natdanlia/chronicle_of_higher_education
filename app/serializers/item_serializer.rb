class ItemSerializer < ActiveModel::Serializer
  attributes :id, :pizza_type_id, :quantity
end
