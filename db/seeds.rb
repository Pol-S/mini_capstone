# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new({ name: "Red Dungeons and Dragons Dice Set", price: 32, image_url: "https://i.etsystatic.com/17091145/r/il/8aa196/1561668578/il_794xN.1561668578_ovgt.jpg", description: "Red and black plastic dice set. Applicable to any edition of DnD!" })

product.save

product = Product.new({ name: "Clear Dungeons and Dragons Dice Set", price: 12, image_url: "https://images-na.ssl-images-amazon.com/images/I/41lUapWj8AL._AC_.jpg", description: "Clear plastic dice set. Applicable to any edition of DnD. Transparency lets you know there are no irregularities in the dice that may throw off their weight. I mean, you'll still get bad rolls. Don't take it so seriously. It's just a game." })

product.save

product = Product.new({ name: "Metal Dungeons and Dragons Dice Set", price: 18, image_url: "https://images-na.ssl-images-amazon.com/images/I/71QMCK59A8L._AC_SX679_.jpg", description: "Handsome black and gold dice. Very serious, very weighty. Have you not considered how loud this is going to be rolling on the table?...Be considerate..." })

product.save

product = Product.new({ name: "Wooden Dungeons and Dragons Dice Set", price: 14, image_url: "https://cdn.shopify.com/s/files/1/1195/8052/products/51FzjBw0r4L_1024x1024.jpg?v=ghostery", description: "WOW. Are we earthy? I hope you like splinters! I bet you play a druid. Badly." })

product.save

product = Product.new({ name: "Weighted Dungeons and Dragons Dice Set", price: 66, image_url: "https://data.whicdn.com/images/317482405/original.jpg", description: "You're a bad person." })

product.save
