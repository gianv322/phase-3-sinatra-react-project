User.destroy_all
Build.destroy_all
Part.destroy_all
List.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

# Users
names = ["Evan", "Gian", "Greg", "Marc", "Liz", "Emily", "Alen"]
10.times do
    User.create(name: names.sample, age: rand(20..50))
end

# Builds
5.times do 
    Build.create(name: "", user_id: rand(1..10))
end

# Parts (by Category)
category = ["Case", "CPU", "GPU", "Memory", "Storage", "Power Supply", "Motherboard", "CPU Cooler"]
20.times do
    Part.create(name: "Placeholder", price: rand(50..200), category: category.sample)
end

# List <<< Join Table
10.times do
    List.create(build_id: rand(1..5), part_id: rand(1..10), name: "Placeholder")
end

puts "✅ Done seeding!"
