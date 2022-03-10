Build.destroy_all
Part.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

# Builds
name = ["Awesome", "Crazy", "Fun", "Affordable"]
part = ["Big 100", "Small 5000", "Shiny Part", "Newest Part", "Heavy Part"]
5.times do 
    Build.create(name: "#{name.sample} Build", total_price: rand(200..500), chassis: part.sample, cpu: part.sample, gpu: part.sample, motherboard: part.sample)
end

# Parts (by Category)
category = ["Case", "CPU", "GPU", "Memory", "Storage", "Power Supply", "Motherboard", "CPU Cooler"]
10.times do
    Part.create(name: "CPU Part", price: rand(50..200), category: category.sample, build_id: rand(1..10))
end

category = ["Case", "CPU", "GPU", "Memory", "Storage", "Power Supply", "Motherboard", "CPU Cooler"]
10.times do
    Part.create(name: "GPU Part", price: rand(50..200), category: category.sample, build_id: rand(1..10))
end

puts "✅ Done seeding!"
