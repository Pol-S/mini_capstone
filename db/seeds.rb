# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Supplier.create!({ name: "Wizards of the Coast", email: "woc@example.com", phone_number: "333 444 5555" })
Supplier.create!({ name: "Geekhaus", email: "ghaus@example.com", phone_number: "444 555 6666" })
Supplier.create!({ name: "Dice Tower", email: "dtower@example.com", phone_number: "777 888 9999" })

Product.create!({ name: "Red Dungeons and Dragons Dice Set", price: 32, description: "Red and black plastic dice set. Applicable to any edition of DnD!", supplier_id: 1 })
Product.create!({ name: "Clear Dungeons and Dragons Dice Set", price: 12, description: "Clear plastic dice set. Applicable to any edition of DnD. Transparency lets you know there are no irregularities in the dice that may throw off their weight. I mean, you'll still get bad rolls. Don't take it so seriously. It's just a game.", supplier_id: 2 })
Product.create!({ name: "Metal Dungeons and Dragons Dice Set", price: 18, description: "Handsome black and gold dice. Very serious, very weighty. Have you not considered how loud this is going to be rolling on the table?...Be considerate...", supplier_id: 3 })
Product.create! ({ name: "Wooden Dungeons and Dragons Dice Set", price: 14, description: "WOW. Aren't we earthy? I hope you like splinters! I bet you play a druid. Badly.", supplier_id: 2 })
Product.create! ({ name: "Weighted Dungeons and Dragons Dice Set", price: 66, description: "You're a bad person.", supplier_id: 1 })

Image.create!({ url: "https://i.etsystatic.com/17091145/r/il/8aa196/1561668578/il_794xN.1561668578_ovgt.jpg", product_id: 1 })
Image.create!({ url: "https://images-na.ssl-images-amazon.com/images/I/41lUapWj8AL._AC_.jpg", product_id: 2 })
Image.create!({ url: "https://images-na.ssl-images-amazon.com/images/I/71QMCK59A8L._AC_SX679_.jpg", product_id: 3 })
Image.create!({ url: "https://cdn.shopify.com/s/files/1/1195/8052/products/51FzjBw0r4L_1024x1024.jpg?v=ghostery", product_id: 4 })
Image.create!({ url: "https://data.whicdn.com/images/317482405/original.jpg", product_id: 5 })
Image.create!({ url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKloRyIn8j9oN3AfQzlG7aRVJCHXgbw4GMk1Jfv5MN_Eq-zf5cyA&s", product_id: 2 })
Image.create!({ url: "https://i.etsystatic.com/16057253/r/il/205512/1932303562/il_794xN.1932303562_njnb.jpg", product_id: 4 })
Image.create!({ url: "https://cdn.shopify.com/s/files/1/1634/0113/products/rengas-tiger-7-piece-rpg-wooden-dice-set-dice-norse-foundry-norse-foundry-dnd-dice-dd-dice-tabletop-dice-luxury-dice-precision-dice-dungeons-and-dragons_1500x.jpg?v=1540272225", product_id: 4 })
