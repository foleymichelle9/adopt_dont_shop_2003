require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "when I go to the show page" do
    it "I can see all shelters info" do
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

      visit "/shelters"

      click_link"#{shelter_1.name}"

      expect(current_path).to eq("/shelters/#{shelter_1.id}")

      expect(page).to have_content(shelter_1.name)
      expect(page).to have_content(shelter_1.address)
      expect(page).to have_content(shelter_1.city)
      expect(page).to have_content(shelter_1.state)
      expect(page).to have_content(shelter_1.zip)
      expect(page).to_not have_content(shelter_2.name)
      expect(page).to_not have_content(shelter_2.address)
    end
  end
end 
