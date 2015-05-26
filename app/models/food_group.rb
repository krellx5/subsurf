class FoodGroup < ActiveRecord::Base
  validates :food_group_name, :presence => true, :uniqueness => true

  has_many :products
end
