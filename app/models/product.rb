class Product < ActiveRecord::Base
  validates :product_name, :presence => true, :uniqueness => true
  validates :food_group_id, :presence => true

  belongs_to :food_group
  has_many :favorites
end
