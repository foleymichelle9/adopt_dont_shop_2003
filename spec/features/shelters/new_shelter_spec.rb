require 'rails_helper'

RSpec.describe "as a visitor" do
  describe "when I go to the index page" do
    it "I can click a link to make a new shelter" do
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

      expect(page).to have_link("New Shelter")

      expect(current_path).to eq("/shelters/new")

      fill_in "Name",    with: "Lost Pets Rescue"
      fill_in "Address", with: "201 Park St"
      fill_in "City",    with: "Madison"
      fill_in "State",   with: "WI"
      fill_in "Zip",     with: "53703"

      click_button"Create Shelter"

      expect(current_path).to eq("/shelters")
      expect(page).to have_link("Lost Pets Rescue")
    end
  end
end 
