class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      add_foreign_key :orders, :carts
      t.integer :quantity
      add_foreign_key :orders, :products
      t.timestamps null: false
    end
  end
end
