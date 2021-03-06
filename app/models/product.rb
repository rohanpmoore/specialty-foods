class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :price, :numericality => true
  validates :origin, :presence => true

  scope :most_reviews, -> {(select("products.id, products.name, count(reviews.id) as reviews_count").joins(:reviews).group("products.id").order("reviews_count DESC"))}

  def average_rating
    reviews = self.reviews
    if reviews.length > 0
      total = 0
      reviews.each do |review|
        total += review.rating
      end
      return (total.to_f/(reviews.length).to_f).round(1)
    else
      return "no reviews yet!"
    end
  end
end
