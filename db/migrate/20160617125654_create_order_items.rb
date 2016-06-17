class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order
      t.references :product
      t.float :price
      t.integer :quantity
      t.float :total
      t.timestamps null: false
    end
  end
end
