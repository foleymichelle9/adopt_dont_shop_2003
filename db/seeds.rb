# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shelter_1 = Shelter.create(name: "Perfect Paws Animal Shelter",
                           address: "1470 N Main St",
                           city: "Madison",
                           state: "WI",
                           zip: 53703)
shelter_2 = Shelter.create(name: "Aristocats Cat Rescue",
                           address: "230 W Washington Ave",
                           city: "Madison",
                           state: "WI",
                           zip: 53703)
