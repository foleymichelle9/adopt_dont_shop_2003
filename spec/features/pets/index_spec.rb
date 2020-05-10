require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  describe "when I visit the pet index page" do
    it "I can see all the pets and their info" do
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

      visit "/pets"

      expect(page).to have_css("img[src*='#{pet1.image}']")
      expect(page).to have_content(pet1.name)
      expect(page).to have_content(pet1.age)
      expect(page).to have_content(pet1.sex)
      expect(page).to have_content(pet1.shelter)
      expect(page).to have_css("img[src*='#{pet2.image}']")
      expect(page).to have_css("img[src*='#{pet3.image}']")
    end
  end
end
