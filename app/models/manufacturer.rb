class Manufacturer < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :address }

  has_many :products
  has_many :favorites, as: :favoriteable

  def favorited?
    favorites.any?
  end
end
