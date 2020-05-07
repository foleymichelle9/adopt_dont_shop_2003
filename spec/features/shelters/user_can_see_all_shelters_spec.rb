require 'rails_helper'

RSpec.describe "shelter index page", type: :feature do
  it "can see all shelter names" do
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

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
  end
end
