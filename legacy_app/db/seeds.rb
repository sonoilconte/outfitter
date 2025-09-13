Item.delete_all
Outfit.delete_all

# --- Create Outfits ---
outfits = Outfit.create!([
  { name: 'casual friday', tag: 'casual' },
  { name: 'serious business', tag: 'dressy' },
  { name: 'weekend', tag: 'casual' }
])

# --- Casual Friday Items ---
casual_friday_items = Item.create!([
  { name: 'favorite grey button-down', brand: 'Louis Vutton', category: 'shirt' },
  { name: 'dark blue jeans', brand: 'seven', category: 'pants' },
  { name: 'black boots', brand: 'Aldo', category: 'shoes' }
])

casual_friday_images = [
  { path: "app/assets/images/shirt_grey.jpg", filename: "shirt_grey.jpg", content_type: "image/jpeg" },
  { path: "app/assets/images/pants_dark_jeans.jpg", filename: "pants_dark_jeans.jpg", content_type: "image/jpeg" },
  { path: "app/assets/images/shoes_black_boots.jpg", filename: "shoes_black_boots.jpg", content_type: "image/jpeg" }
]

item = Item.first

print('exists???')

print Rails.root.join("app/assets/images/shirt_grey.jpeg").exist?

item.image.attach(
    io: File.open(Rails.root.join("app/assets/images/shirt_grey.jpeg")),
    filename: "shirt_grey.jpg",
    content_type: "image/jpeg"
)

print "confirm attached..."

item.image.attached?  # => true

url = Rails.application.routes.url_helpers.rails_blob_path(item.image, only_path: true)
puts url

# item.image.attach(
#     io: File.open(Rails.root.join("app/assets/images/shirt_grey.jpg")),
#     filename: "shirt_grey.jpg",
#     content_type: "image/jpeg" 
# )

# print item.image.attached?

# casual_friday_items.each_with_index do |item, index|
#   file = casual_friday_images[index]
#   item.image.attach(
#     io: File.open(Rails.root.join(file[:path])),
#     filename: file[:filename],
#     content_type: file[:content_type]
#   )
# end

# Link casual friday items to outfit
# outfits[0].items << casual_friday_items

# --- Serious Business Items ---
# serious_business_items = Item.create!([
#   { name: 'white dress shirt', brand: 'Hugo Boss', category: 'shirt' },
#   { name: 'black slacks', brand: 'Armani', category: 'pants' },
#   { name: 'black oxfords', brand: 'Aldo', category: 'shoes' }
# ])

# serious_business_images = [
#   { path: "app/assets/images/shirt_hugo-boss.jpg", filename: "shirt_hugo-boss.jpg", content_type: "image/jpeg" },
#   { path: "app/assets/images/pants_black_slacks.jpeg", filename: "pants_black_slacks.jpeg", content_type: "image/jpeg" },
#   { path: "app/assets/images/shoes_black_oxfords.jpg", filename: "shoes_black_oxfords.jpg", content_type: "image/jpeg" }
# ]

# serious_business_items.each_with_index do |item, index|
#   file = serious_business_images[index]
#   item.image.attach(
#     io: File.open(Rails.root.join(file[:path])),
#     filename: file[:filename],
#     content_type: file[:content_type]
#   )
# end

# outfits[1].items << serious_business_items

# --- Weekend Items ---
# weekend_items = Item.create!([
#   { name: 'green t-shirt', brand: 'Banana Republic', category: 'shirt' },
#   { name: 'light blue jeans', brand: "Levi's", category: 'pants' },
#   { name: 'favorite sneakers', brand: 'New Balance', category: 'shoes' }
# ])

# weekend_images = [
#   { path: "app/assets/images/shirt_green-tshirt.jpg", filename: "shirt_green-tshirt.jpg", content_type: "image/jpeg" },
#   { path: "app/assets/images/pants_jeans_levis.jpeg", filename: "pants_jeans_levis.jpeg", content_type: "image/jpeg" },
#   { path: "app/assets/images/shoes_new_balance.jpg", filename: "shoes_new_balance.jpg", content_type: "image/jpeg" }
# ]

# weekend_items.each_with_index do |item, index|
#   file = weekend_images[index]
#   item.image.attach(
#     io: File.open(Rails.root.join(file[:path])),
#     filename: file[:filename],
#     content_type: file[:content_type]
#   )
# end

# outfits[2].items << weekend_items

# --- Debug output ---
puts "Items:"
p Item.all
puts "Outfits:"
p Outfit.all