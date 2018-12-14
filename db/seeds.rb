Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.dish, price: Faker::Number.decimal(2), origin: Faker::StarTrek.location)
end

Product.all.each do |product|
  5.times do |index2|
    Review.create!(name: Faker::WorldOfWarcraft.hero, content: Faker::Lorem.paragraph_by_chars(100), rating: Faker::Number.between(1,5), product_id: product.id)
  end
end
