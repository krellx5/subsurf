class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :manufacturer_name
      t.string :address
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
