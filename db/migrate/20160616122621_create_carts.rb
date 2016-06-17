class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      add_foreign_key :carts, :users
      t.timestamps null: false
    end
  end
end
