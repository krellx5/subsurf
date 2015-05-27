class Category < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :notes }

  has_many :products
  has_many :manufacturers, :through => :products
  has_many :favorites, as: :favoriteable

  def favorited?
    favorites.any?
  end
end
