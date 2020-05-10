require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  describe "when I visit a shelter show page" do
    it "I can click a link to delete a shelter" do
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

      visit "shelters/#{shelter_1.id}"

      click_link"Delete Shelter"

      expect(current_path).to eq("/shelters")
      expect(page).to_not have_link(shelter_1.name)
      expect(page).to have_link(shelter_2.name)
    end
  end
end 
