class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :pizza_type_id
      t.integer :quantity

      t.timestamps
    end
  end
end
