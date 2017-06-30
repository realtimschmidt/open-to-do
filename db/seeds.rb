require "random_data"

50.times do
  List.create!(
    title:  Faker::Name.title
  )
end
lists = List.all

100.times do
  Item.create!(
    list:         lists.sample,
    title:        Faker::Name.title,
    description:  Faker::Lorem.paragraph,
    status:       false
  )
end

puts "Seed finished"
puts "#{List.count} lists created"
puts "#{Item.count} items created"
