# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear out old data
OutfitItem.delete_all
Item.delete_all
Outfit.delete_all

# Create outfits
casual_friday = Outfit.create!(name: "casual friday", tag: "casual")
serious_business = Outfit.create!(name: "serious business", tag: "dressy")
weekend = Outfit.create!(name: "weekend", tag: "casual")

# Create items
casual_friday_items = Item.create!([
  { name: "favorite grey button-down", brand: "Louis Vuitton", category: "shirt" },
  { name: "dark blue jeans", brand: "Seven", category: "pants" },
  { name: "black boots", brand: "Aldo", category: "shoes" }
])

# Attach images (skip if file missing)
begin
  casual_friday_items[0].image.attach(
    io: File.open(Rails.root.join("app/assets/images/shirt_grey.jpeg")),
    filename: "shirt_grey.jpeg",
    content_type: "image/jpeg"
  )
rescue Errno::ENOENT
  puts "Image not found: shirt_grey.jpeg"
end

begin
  casual_friday_items[1].image.attach(
    io: File.open(Rails.root.join("app/assets/images/pants_dark_jeans.jpeg")),
    filename: "pants_dark_jeans.jpeg",
    content_type: "image/jpeg"
  )
rescue Errno::ENOENT
  puts "Image not found: pants_dark_jeans.jpeg"
end

begin
  casual_friday_items[2].image.attach(
    io: File.open(Rails.root.join("app/assets/images/shoes_black_boots.jpeg")),
    filename: "shoes_black_boots.jpeg",
    content_type: "image/jpeg"
  )
rescue Errno::ENOENT
  puts "Image not found: shoes_black_boots.jpeg"
end

# Associate items with outfit
casual_friday.items << casual_friday_items

puts "Seed complete!"
puts "Items: #{Item.count}"
puts "Outfits: #{Outfit.count}"
