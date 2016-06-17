class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.references :cart
      t.integer :quantity
      t.references :product
      t.timestamps null: false
    end
  end
end
