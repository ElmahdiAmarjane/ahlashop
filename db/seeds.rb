# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Création de 3 produits pour l'utilisateur ayant l'ID 1
Product.create!([
  {
    p_name: "Produit 1",
    p_image: "image1.jpg",
    p_qnt: 10,
    p_market: "Amazon",
    p_cost: 20.99,
    p_shipping_cost: 5.99,
    p_reference: "REF001",
    p_sourcing_date: Time.now.to_i,
    p_delevery_date: (Time.now + 7.days).to_i,
    user_id: 1
  },
  {
    p_name: "Produit 2",
    p_image: "image2.jpg",
    p_qnt: 5,
    p_market: "eBay",
    p_cost: 15.50,
    p_shipping_cost: 3.99,
    p_reference: "REF002",
    p_sourcing_date: Time.now.to_i,
    p_delevery_date: (Time.now + 5.days).to_i,
    user_id: 1
  },
  {
    p_name: "Produit 3",
    p_image: "image3.jpg",
    p_qnt: 20,
    p_market: "AliExpress",
    p_cost: 10.75,
    p_shipping_cost: 2.99,
    p_reference: "REF003",
    p_sourcing_date: Time.now.to_i,
    p_delevery_date: (Time.now + 10.days).to_i,
    user_id: 1
  }
])

puts "✅ 3 produits ont été créés pour l'utilisateur avec l'ID 1"
