class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      add_foreign_key :transactions, :orders
      t.float :amount
      add_foreign_key :transactions, :users
      t.boolean :status
      t.timestamps null: false
    end
  end
end
