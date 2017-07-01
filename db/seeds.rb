require "random_data"

50.times do
  List.create!(
    list_title:  Faker::Name.title
  )
end
lists = List.all

100.times do
  Item.create!(
    list:         lists.sample,
    item_title:   Faker::Name.title,
    description:  Faker::Lorem.paragraph,
    status:       false
  )
end

5.times do
  User.create!(
    full_name:        Faker::Name.name,
    email:            Faker::Internet.email,
    password_digest:  Faker::Internet.password(8)
  )
end

puts "Seed finished"
puts "#{List.count} lists created"
puts "#{Item.count} items created"
puts "#{User.count} users created"
