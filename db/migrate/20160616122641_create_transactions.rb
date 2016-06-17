class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :order
      t.float :amount
      t.references :user
      t.boolean :status
      t.timestamps null: false
    end
  end
end
