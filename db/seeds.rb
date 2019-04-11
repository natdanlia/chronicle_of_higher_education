# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


order1 = Order.create()
order2 = Order.create()

pepperoni = PizzaType.create(name: "Pepperoni", price: 12.99)
margherita =  PizzaType.create(name: "Margherita", price: 11.99)
cheese = PizzaType.create(name: "Cheese", price: 10.60)
florentine = PizzaType.create(name: "Florentine", price: 13.75)
meat_lovers = PizzaType.create(name: "Meat Lovers", price: 14.50)

item1 = Item.create(quantity: 4, order: order1, pizza_type: pepperoni)
item2 = Item.create(quantity: 1, order: order1, pizza_type: cheese)
item3 = Item.create(quantity: 3, order: order2, pizza_type: margherita)
item4 = Item.create(quantity: 1, order: order2, pizza_type: florentine)
item5 = Item.create(quantity: 1, order: order2, pizza_type: meat_lovers)
