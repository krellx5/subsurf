class ChangeProductsTable < ActiveRecord::Migration
  def change
    remove_column :manufacturers, :category_id
    add_column :products, :category_id, :integer
    add_column :products, :manufacturer_id, :integer
  end
end
