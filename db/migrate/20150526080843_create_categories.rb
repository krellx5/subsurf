class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_name
      t.text :category_notes

      t.timestamps null: false
    end
  end
end
