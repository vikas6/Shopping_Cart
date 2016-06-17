class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :slug
      t.string :description
      t.integer :weight
      t.string :image
      t.string :thumbnail
      t.timestamps null: false
    end
  end
end
