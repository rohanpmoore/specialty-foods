class Review < ActiveRecord::Base
  belongs_to :product

  validates :name, :presence => true
  validates :content, length: 50..250
  validates :rating, inclusion: {in: 1..5}
end
