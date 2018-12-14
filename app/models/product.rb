class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :price, :numericality => true
  validates :origin, :presence => true
end
