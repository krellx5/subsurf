class ChangeFavoriteId < ActiveRecord::Migration
  def change
    add_column :favorites, :favoriteable_id, :integer
    add_column :favorites, :favoriteable_type, :string
    remove_column :favorites, :manufacturer_id
    remove_column :favorites, :category_id
    remove_column :favorites, :product_id
  end
end
