require 'rails_helper'

feature 'Add a friend', js: true do
  let!(:user) { create :user, email: "jenny@mindful-living.com", password: "secret" }
  let!(:user1) { create :user, email: "penny@mindful-living.com", password: "secret"}
  let!(:profile) { create :profile, first_name: "Jenny", last_name: "Springest", user: user }
  let!(:profile1) { create :profile, first_name: "Penny", last_name: "Dreadful", user: user1 }

  scenario 'log in and add a friend' do
    visit profiles_path

    fill_in 'Email', with: "jenny@mindful-living.com"
    fill_in 'Password', with: "secret"

    page.execute_script("$('form').submit()")
    sleep(2)

    click_link("Penny Dreadful")
    sleep(2)

    click_link("Follow Penny!")

    expect(page).to have_content('penny@mindful-living.com')

  end

end
