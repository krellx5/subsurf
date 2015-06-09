class Category < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :scope => :notes }

  has_many :products, dependent: :destroy
  has_many :manufacturers, :through => :products
  has_many :favorites, as: :favoriteable, dependent: :destroy

  def favorited?(user)
    favorites.where(user_id: user.id).any?
  end
end
