class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      add_foreign_key :product_categories, :products
      add_foreign_key :product_categories, :categories
      t.timestamps null: false
    end
  end
end
