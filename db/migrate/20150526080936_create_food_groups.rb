class CreateFoodGroups < ActiveRecord::Migration
  def change
    create_table :food_groups do |t|
      t.string :food_group_name

      t.timestamps null: false
    end
  end
end
