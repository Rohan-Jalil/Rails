# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Seeding Customers Table
customer1 = Customer.create(first_name: "Luke", last_name: "Skywalker")
customer2 = Customer.create(first_name: "Darth", last_name: "Vader")
customer3 = Customer.create(first_name: "Ben", last_name: "Kenobi")
customer4 = Customer.create(first_name: "Master", last_name: "Yoda")

#Seeding Charges Table

#Successful Charges
customer1.charges.create(amount: 100, currency: "usd", paid: true, refunded: false)
customer1.charges.create(amount: 200, currency: "usd", paid: true, refunded: false)
customer1.charges.create(amount: 300, currency: "usd", paid: true, refunded: false)
customer1.charges.create(amount: 400, currency: "usd", paid: true, refunded: false)
customer1.charges.create(amount: 500, currency: "usd", paid: true, refunded: false)

customer2.charges.create(amount: 100, currency: "usd", paid: true, refunded: false)
customer2.charges.create(amount: 200, currency: "usd", paid: true, refunded: false)
customer2.charges.create(amount: 300, currency: "usd", paid: true, refunded: false)

customer3.charges.create(amount: 100, currency: "usd", paid: true, refunded: false)

customer4.charges.create(amount: 200, currency: "usd", paid: true, refunded: false)

#Failed Charges
customer3.charges.create(amount: 100, currency: "usd", paid: false, refunded: false)
customer3.charges.create(amount: 200, currency: "usd", paid: false, refunded: false)
customer3.charges.create(amount: 300, currency: "usd", paid: false, refunded: false)

customer4.charges.create(amount: 100, currency: "usd", paid: false, refunded: false)
customer4.charges.create(amount: 200, currency: "usd", paid: false, refunded: false)

#Disputed Charges
customer1.charges.create(amount: 100, currency: "usd", paid: false, refunded: true)
customer1.charges.create(amount: 200, currency: "usd", paid: false, refunded: true)
customer1.charges.create(amount: 300, currency: "usd", paid: false, refunded: true)

customer2.charges.create(amount: 100, currency: "usd", paid: false, refunded: true)
customer2.charges.create(amount: 200, currency: "usd", paid: false, refunded: true)