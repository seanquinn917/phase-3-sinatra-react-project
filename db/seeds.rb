
puts "🌱 Seeding spices..."

Restaurant.create(name: "The Olive Garden", location: "New York, New York", price: "$$")
Restaurant.create(name: "Taverna Kyclades", location: "Astoria, New York", price: "$$$$")
Restaurant.create(name: "Tasty's", location: "Astoria, New York", price: "$$")
Restaurant.create(name: "The Ground Round", location: "San Fransisco, California", price: "$$$")
Restaurant.create(name: "The G", location: "San Fransisco, California", price: "$$$$")
Restaurant.create(name: "The Restaurant at the Zephyr", location: "San Fransisco, California", price: "$$")
Restaurant.create(name: "The Drake", location: "Chicago, Illinois", price: "$$$")
Restaurant.create(name: "The Godfrey Grill", location: "Chicago, Illinois", price: "$$$$$")
Restaurant.create(name: "Pineapple's Bar and Grill", location: "Chicago, Illinois", price: "$$")


Restaurant.all.each do |restaurant|
    5.times do
        Review.create(
        comment: Faker::Restaurant.review,
        restaurant_id: restaurant.id,
        )
    end 
end


puts "✅ Done seeding!"
