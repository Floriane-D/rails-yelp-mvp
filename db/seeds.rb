require "faker"
categories = ["chinese", "italian", "japanese", "french", "belgian"]
10.times do
  restaurant = Restaurant.new(
    name: Faker::BossaNova.song,
    address: Faker::Address.full_address,
    category: categories[rand(categories.length)],
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
  restaurant.save!
end
