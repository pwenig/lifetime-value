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
end