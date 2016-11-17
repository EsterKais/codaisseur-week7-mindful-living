require 'rails_helper'

feature 'Find friends search bar', js: true do
  let!(:user) { create :user, email: "jenny@mindful-living.com", password: "secret" }
  let!(:user1) { create :user}
  let!(:profile) { create :profile, first_name: "Jenny", last_name: "Springest", user: user }
  let!(:profile1) { create :profile, first_name: "Penny", last_name: "Dreadful", user: user1 }


  scenario 'log in' do

    visit profile_path(profile.id)

    fill_in 'Email', with: "jenny@mindful-living.com"
    fill_in 'Password', with: "secret"

    page.execute_script("$('form').submit()")
    sleep(2)

    expect(page).to have_content('Jenny')

  end

  scenario 'log in and search for a friend' do
    visit profile_path(profile.id)

    fill_in 'Email', with: "jenny@mindful-living.com"
    fill_in 'Password', with: "secret"

    page.execute_script("$('form').submit()")
    sleep(2)

    fill_in 'search for friends..', with: "Penny"

    page.execute_script("$('form').submit()")
    sleep(2)

    expect(page).to have_content('Penny')

  end

end
