class Product
  validates :name, :presence => true
  validates :price, :numericality => true
  validates :origin, :presence => true
end
