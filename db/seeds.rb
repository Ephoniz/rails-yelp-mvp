# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

category = %w[chinese italian japanese french belgian]

8.times do
  Restaurant.create(name: Faker::Restaurant.name,
                                address: Faker::Restaurant.description,
                                category: category.sample)
end
