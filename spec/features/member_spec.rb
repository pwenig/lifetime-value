require 'rails_helper'

feature 'Current Members' do

  scenario "user sees a current member link" do
    create_user
    login
    expect(page).to have_content "Current Members"
  end

  scenario "user clicks on current member link and sees current member page" do
    create_user
    login
    click_on "Current Members"
    expect(page).to have_content "Current Memberships"
  end

  scenario "user clicks on current member link and sees current members" do
    create_user
    create_user0
    create_user1
    create_subscription0
    login
    click_on "Current Members"
    expect(page).to have_content "Scarlett Stark II"
    expect(page).to_not have_content "Theo Weber"
  end
end