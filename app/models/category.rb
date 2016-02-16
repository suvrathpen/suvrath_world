class Category < ActiveRecord::Base
  has_many :photos
  has_one :Category
  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('name')
end
