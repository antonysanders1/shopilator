Store.destroy_all
Item.destroy_all

User.create(username: 'test', email: 'test@test.com', password: '12345')

#Stores
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
        name: Faker::Commerce.product_name,
        price: Faker::Number.decimal(l_digits: 2, r_digits: 2)
    }])
end

30.times do
    Item.create([{
        name: Faker::Food.fruits,
        price: Faker::Commerce.price(range: 0.99..6.0)
    }])
end

30.times do
    Item.create([{
        name: Faker::Food.vegetables,
        price: Faker::Commerce.price(range: 0.99..6.0)
    }])
end

30.times do
    Item.create([{
        name: Faker::Food.spice,
        price: Faker::Commerce.price(range: 0.99..4.0)
    }])
end

30.times do
    Item.create([{
        name: Faker::Food.dish,
        price: Faker::Commerce.price(range: 5.0..10.0)
    }])
end
