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

serious_business_items = Item.create!([
  { name: "white dress shirt", brand: "Boss", category: "shirt" },
  { name: "black slacks", brand: "Banana Republic", category: "pants" },
  { name: "black dress shoes", brand: "Clarks", category: "shoes" }
])

weekend_items = Item.create!([
  { name: "green t-shirt", brand: "H&M", category: "shirt" },
  { name: "jeans levis", brand: "Levis", category: "pants" },
  { name: "sneakers", brand: "New Balance", category: "shoes" }
])

# Map items to their corresponding image files
images = [
  { item: casual_friday_items[0], file: "shirt_grey.jpeg" },
  { item: casual_friday_items[1], file: "pants_dark_jeans.jpeg" },
  { item: casual_friday_items[2], file: "shoes_black_boots.jpeg" },
  { item: serious_business_items[0], file: "shirt_boss.jpeg" },
  { item: serious_business_items[1], file: "pants_black_slacks.jpeg" },
  { item: serious_business_items[2], file: "shoes_black_oxfords.jpeg" },
  { item: weekend_items[0], file: "shirt_green_t-shirt.jpeg" },
  { item: weekend_items[1], file: "pants_jeans_levis.jpeg" },
  { item: weekend_items[2], file: "shoes_new_balance.jpeg" },
]

ActiveRecord::Base.transaction do
  puts "Seeding database..."
  images.each do |img|
    path = Rails.root.join("app/assets/images/#{img[:file]}")
    if File.exist?(path)
      img[:item].image.attach(
        io: File.open(path),
        filename: img[:file],
        content_type: "image/jpeg"
      )
      puts "Attached #{img[:file]} to #{img[:item].name}"
    else
      puts "⚠️ Missing file: #{path}"
    end
  end
end

# Associate items with outfits
casual_friday.items << casual_friday_items
serious_business.items << serious_business_items
weekend.items << weekend_items

puts "Seed complete!"
puts "Items: #{Item.count}"
puts "Outfits: #{Outfit.count}"
