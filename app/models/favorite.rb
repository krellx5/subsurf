class Favorite < ActiveRecord::Base
  validates :user_id, :presence => true
  validates_uniqueness_of :user_id, :scope => [:favoriteable_id, :favoriteable_type]


  belongs_to :favoriteable, :polymorphic => true
  belongs_to :user
end
