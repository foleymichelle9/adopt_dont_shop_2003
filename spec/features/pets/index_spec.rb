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

      pet_1 = Pet.create(image: "https://www.humanesociety.org/sites/default/files/styles/400x400/public/2019/02/dog-451643.jpg?h=bf654dbc&itok=txM-HxF8.jpg",
                         name: "Russ",
                         age: "3",
                         sex: "Male",
                         shelter_id: shelter1.id)
      pet_2 = Pet.create(image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fqz.com%2F1771127%2Fwhat-rescue-dogs-can-teach-us-about-vulnerability%2F&psig=AOvVaw3oAOumqNxcxg5LI7AXaE0B&ust=1589218928103000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOia9YXsqekCFQAAAAAdAAAAABAJ.jpg",
                         name: "Molly",
                         age: "2",
                         sex: "Female",
                         shelter_id: shelter2.id)


      visit "/pets"

      expect(page).to have_css("img[src*='#{pet_1.image}']")
      expect(page).to have_content(pet_1.name)
      expect(page).to have_content(pet_1.age)
      expect(page).to have_content(pet_1.sex)
      expect(page).to have_content(shelter_1.name)
      expect(page).to have_css("img[src*='#{pet_2.image}']")
    end
  end
end 
