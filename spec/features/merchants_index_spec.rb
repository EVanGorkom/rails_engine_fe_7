require 'rails_helper'

RSpec.describe "Merchant's Index Page" do
  it "Shows all of the merchants in the api" do
    visit '/merchants' 

    expect(page).to have_content("Merchants")
    expect(page).to have_content("")
    expect(page).to have_content("")
  end
end