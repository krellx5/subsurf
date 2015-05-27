class ChangeNameInput < ActiveRecord::Migration
  def change
    rename_column :categories, :category_name, :name
    rename_column :food_groups, :food_group_name, :name
    rename_column :manufacturers, :manufacturer_name, :name
    rename_column :products, :product_name, :name
  end
end
