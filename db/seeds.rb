Item.delete_all
Outfit.delete_all

Outfit.create([
  {name: 'casual friday', tag: 'casual'},
  {name: 'serious business', tag: 'dressy'},
  {name: 'weekend', tag: 'casual'}
])

casual_friday_items = Item.create([
  {name: 'favorite grey button-down', brand: 'Louis Vutton', category: 'shirt', image: File.new("app/assets/images/shirt_grey.jpg")},
  {name: 'dark blue jeans', brand: 'seven', category: 'pants', image: File.new("app/assets/images/pants_dark_jeans.jpg")},
  {name: 'black boots', brand: 'Aldo', category: 'shoes', image: File.new("app/assets/images/shoes_black_boots.jpg")}
])

serious_business_items = Item.create([
  {name: 'white dress shirt', brand: 'Hugo Boss', category: 'shirt', image: File.new("app/assets/images/shirt_hugo-boss.jpg")},
  {name: 'black slacks', brand: 'Armani', category: 'pants', image: File.new("app/assets/images/pants_black_slacks.jpeg")},
  {name: 'black oxfords', brand: 'Aldo', category: 'shoes', image: File.new("app/assets/images/shoes_black_oxfords.jpg")}
])

weekend = Item.create([
  {name: 'green t-shirt', brand: 'Banana Republic', category: 'shirt', image: File.new("app/assets/images/shirt_green-tshirt.jpg")},
  {name: 'light blue jeans', brand: "Levi's", category: 'pants', image: File.new("app/assets/images/pants_jeans_levis.jpeg")},
  {name: 'favorite sneakers', brand: 'New Balance', category: 'shoes', image: File.new("app/assets/images/shoes_new_balance.jpg")}
])

outfit = Outfit.find_by_id(1)
casual_friday_items.each do |item|
  outfit.items << item
end

outfit = Outfit.find_by_id(2)
serious_business_items.each do |item|
  outfit.items << item
end

outfit = Outfit.find_by_id(3)
weekend.each do |item|
  outfit.items << item
end

p Item.all
p Outfit.all

# User.create({first_name: 'John', last_name: 'Smith', password_digest: '1', username: 'johnsmithuser', email: 'johnsmithuser@gmail.com' })
# p User.all
