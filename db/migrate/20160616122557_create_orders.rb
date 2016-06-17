class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user
      t.float :amount
      t.string :shipping_name
      t.string :shipping_address
      t.string :shipping_city
      t.string :shipping_state
      t.integer :shipping_zip
      t.string :country
      t.integer :phone_no
      t.string :email
      t.boolean :status
      t.date :date
      t.timestamps null: false
    end
  end
end
