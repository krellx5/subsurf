class Favorite < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :product_id, :presence => true
  validates :manufacturer_id, :presence => true

  belongs_to :user
  belongs_to :product
  belongs_to :manufacturer
end
