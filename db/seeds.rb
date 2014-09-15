# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User.create(name: 'Hamilton', password: 'test', password_confirmation: 'test', email: 'Hqkarl@gmail.com')
# Beverage.create(name: 'Beverage A', edition: 1)
Color.create(value: '#000000', name:"midnight", beverage_id: Beverage.first)
Color.create(value: '#FFF000', name: "surprise", beverage_id: Beverage.first)

