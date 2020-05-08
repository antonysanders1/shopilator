#Stores
Store.destroy_all
Item.destroy_all

Store.create(name: 'Aldi')
Store.create(name: 'CVS')
Store.create(name: 'Costco')
Store.create(name: 'Ingles')
Store.create(name: 'Kmart')
Store.create(name: 'Kroger')
Store.create(name: 'Meijer')
Store.create(name: 'Piggly Wiggly')
Store.create(name: 'Publix')
Store.create(name: "Sam's Club")
Store.create(name: 'Walmart')
Store.create(name: 'Walgreens')
Store.create(name: 'Whole Foods')


#Items
50.times do
    Item.create([{
        name: Faker::Commerce.product_name.unique.product_name
        price: Faker::Commerce.price(range: 10.0..50.0, as_string: true)
    }])
end

# 50.times do
#     Item.create([{
#         name: Faker::Food.fruits.unique.fruits
#         price: Faker::Commerce.price(range: 0.99..6.0, as_string: true)
#     }])
# end

# 50.times do
#     Item.create([{
#         name: Faker::Food.vegetables.unique.vegetables
#         price: Faker::Commerce.price(range: 0.99..6.0, as_string: true)
#     }])
# end

# 30.times do
#     Item.create([{
#         name: Faker::Food.spice.unique.spice
#         price: Faker::Commerce.price(range: 0.99..4.0, as_string: true)
#     }])
# end

# 50.times do
#     Item.create([{
#         name: Faker::Food.dish.unique.dish
#         price: Faker::Commerce.price(range: 5.0..10.0, as_string: true)
#     }])
# end
