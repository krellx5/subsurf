class FoodGroup < ActiveRecord::Base


  validates :name, :presence => true, :uniqueness => true

  has_many :products
end
