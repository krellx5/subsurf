class Product < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true
  validates :food_group_id, :presence => true

  belongs_to :food_group
  belongs_to :category
  belongs_to :manufacturer
  has_many :favorites, as: :favoriteable, dependent: :destroy

  mount_uploader :image, ImageUploader

  def favorited?(user)
    favorites.where(user_id: user.id).any?
  end
end
