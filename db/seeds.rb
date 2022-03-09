Build.destroy_all
Part.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

# Builds
name = ["Awesome", "Crazy", "Fun", "Affordable"]
part_name = ["Big 100", "Small 5000", "Shiny Part", "Newest Part", "Heavy Part"]
10.times do 
    Build.create(name: "#{name.sample} Build", 
    total_price: rand(200..500),
    case: part_name.sample,
    cpu: part_name.sample,
    gpu: part_name.sample,
    memory: part_name.sample,
    storage: part_name.sample,
    power_supply: part_name.sample,
    motherboard: part_name.sample,
    cpu_cooler: part_name.sample)
end

# Parts (by Category)
category = ["Case", "CPU", "GPU", "Memory", "Storage", "Power Supply", "Motherboard", "CPU Cooler"]
20.times do
    Part.create(name: "Placeholder", price: rand(50..200), category: category.sample, build_id: rand(1..10))
end


puts "✅ Done seeding!"
