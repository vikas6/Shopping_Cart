class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      add_foreign_key :order_details, :orders
      add_foreign_key :order_details, :products
      t.float :price
      t.integer :quantity
      t.timestamps null: false
    end
  end
end
