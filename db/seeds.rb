# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(:name => "Jeans1", :description => "Seed generated blue jeans. Womens fit", :colour => "Denim Blue", :image_url => "https://static.pexels.com/photos/42466/pexels-photo-42466.jpeg", :price => 11.99)
Product.create(:name => "Jeans2", :description => "Seed generated blue jeans. Mens fit.", :colour => "Denim Blue", :image_url => "https://upload.wikimedia.org/wikipedia/commons/d/d2/Jeans_for_men.jpg", :price => 23.67)
Product.create(:name => "Shirt1", :description => "Seed generated T-Shirt. Unisex fit.", :colour => "Salmon", :image_url => "https://upload.wikimedia.org/wikipedia/commons/5/56/T-Shirt_Orange_Fuse_-_Orus_Clothing.png", :price => 10.21)
Product.create(:name => "Jacket1", :description => "Seed generated jacket. Unisex fit.", :colour => "Grey", :image_url => "https://c1.staticflickr.com/9/8049/8098523438_e0d15cd826.jpg", :price => 33.41)

