
puts "🌱 Seeding spices..."

Hotel.create(name: "The Crosby Hotel", location: "New York, New York", price: rand(500-900))
Hotel.create(name: "The Whitby Hotel", location: "New York, New York", price: rand(500-900))
Hotel.create(name: "The Millenium Hilton", location: "New York, New York", price: rand(500-900))
Hotel.create(name: "The Marker San Fransisco", location: "San Fransisco, California", price: rand(500-900))
Hotel.create(name: "Hotel G", location: "San Fransisco, California", price: rand(500-900))
Hotel.create(name: "Hotel Zephyr", location: "San Fransisco, California", price: rand(500-900))
Hotel.create(name: "The Drake Hotel", location: "Chicago, Illinois", price: rand(500-900))
Hotel.create(name: "The Godfrey Hotel", location: "Chicago, Illinois", price: rand(500-900))
Hotel.create(name: "StayPineapple", location: "Chicago, Illinois", price: rand(500-900))


Hotel.all.each do |hotel|
    Review.create(
        rating: rand(1...5),
        comment: Faker::Lorem.sentence,
        hotel_id: hotel.id,
        )
    end 


puts "✅ Done seeding!"
