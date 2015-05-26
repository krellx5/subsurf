class Manufacturer < ActiveRecord::Base
  validates :manufacturer_name, :presence => true, :uniqueness => { :scope => :address }

  belongs_to :category
  has_many :favorites
end
