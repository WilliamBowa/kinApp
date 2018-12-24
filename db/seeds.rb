# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seeding the 4 Phone Carriers

Carrier.create(name: "Vodacom", description: "This is Vodacom", extension: 81)
Carrier.create(name: "Airtel",  description: "This is Airtel", extension: 99)
Carrier.create(name: "Orange",  description: "This is Orange", extension: 81)
Carrier.create(name: "Africel", description: "This is Africel", extension: 86)