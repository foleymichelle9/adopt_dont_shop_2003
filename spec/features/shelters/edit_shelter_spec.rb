require 'rails helper'

RSpec.describe "As a visitor" do
  describe "when I visit shelter show page" do
    it "I can click link to edit the shelter" do
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

      visit "/shelters/#{shelter_2.id}"

      click_link"Update Shelter"

      fill_in "Name",  with: "Dane County Animal Shelter"
      fill_in "Address", with: "2380 E Rand Rd"
      fill_in "City",  with: "Madison"
      fill_in "State", with: "WI"
      fill_in "Zip",   with: "53703"

      click_button"Update Shelter"

      expect(current_path).to eq("/shelters/#{shelter_2.id}")
      expect(page).to have_content("Dane County Animal Shelter")
      expect(page).to have_content("2380 E Rand Rd")
      expect(page).to have_content("Madison")
      expect(page).to have_content("WI")
      expect(page).to have_content("53703")
    end
  end
end                          
