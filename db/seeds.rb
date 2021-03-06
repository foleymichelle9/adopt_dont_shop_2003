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
                           pet1 = Pet.create(image: "https://dogzone-tcwebsites.netdna-ssl.com/wp-content/uploads/2016/02/English-Springer-Spaniel-breed.jpg",
                                                     name: "Raxel", age: "1", sex: "Male", shelter: "#{shelter_1.name}")
                           pet2 = Pet.create(image: "https://dogzone-tcwebsites.netdna-ssl.com/wp-content/uploads/2016/02/golden-retriever-breed.jpg",
                                                     name: "Molly", age: "5", sex: "Female", shelter: "#{shelter_2.name}")
                           pet3 = Pet.create(image: "https://dogzone-tcwebsites.netdna-ssl.com/wp-content/uploads/2019/05/boxer-breed-photo.jpg",
                                                     name: "Sam", age: "2", sex: "Male", shelter: "#{shelter_2.name}")
