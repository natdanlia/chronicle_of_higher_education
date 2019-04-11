class CreateItem < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :order_id
      t.integer :quantity
      t.integer :pizza_type_id
    end
  end
end
