require 'rails_helper'

RSpec.describe "Merchant's Index Page" do
  it "Shows all of the merchants in the api" do
    visit '/merchants' 

    expect(page).to have_content("Merchants")
    expect(page).to have_content("1 Schroeder-Jerde")
    expect(page).to have_content("2 Klein, Rempel and Jones")
    expect(page).to have_content("3 Willms and Sons")
  end

  it "Each merchant name is a link to that merchant's show page" do
    visit '/merchants'

    click_on "Schroeder-Jerde"

    expect(current_path).to eq("/merchants/1")
    expect(page).to have_content("Schroeder-Jerde's Page")
    expect(page).to have_content("Items List:")
    expect(page).to have_content("4 Item Nemo Facere")
    expect(page).to have_content("5 Item Expedita Aliquam")
    expect(page).to have_content("6 Item Provident At")
  end
end