require 'rails_helper'

RSpec.describe "Items Index page" do
  it "should display all of the items in the API" do
    visit '/items'

    expect(page).to have_content("All Items")
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_link("Item Nemo Facere")
    expect(page).to have_content("Item Expedita Aliquam")
    expect(page).to have_link("Item Expedita Aliquam")
    expect(page).to have_content("Item Provident At")
    expect(page).to have_link("Item Provident At")
    expect(page).to have_content("Item Expedita Fuga")
    expect(page).to have_link("Item Expedita Fuga")
  end

  it "each item name should be a link to that item's show page" do
    visit '/items'

    expect(page).to have_link("Item Nemo Facere")
    click_link "Item Nemo Facere"

    expect(current_path).to eq "/items/4"

    expect(page).to have_content("Item Name: Item Nemo Facere")
    expect(page).to have_content("Description: Sunt eum id")
    expect(page).to have_content("Price: $42.91")
  end
end