class Category < ActiveRecord::Base
  validates :category_name, :presence => true, :uniqueness => { :scope => :category_notes }

  has_many :manufacturers
  has_many :favorites, :through => :manufacturers
end
