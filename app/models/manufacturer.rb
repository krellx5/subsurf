class Manufacturer < ActiveRecord::Base


  validates :name, :presence => true, :uniqueness => { :scope => :address }

  has_many :products, dependent: :destroy
  has_many :favorites, as: :favoriteable, dependent: :destroy

  def favorited?(user)
    favorites.where(user_id: user.id).any?
  end
end
