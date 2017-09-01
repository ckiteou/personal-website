require 'rails_helper'

RSpec.feature "Welcome Page:", type: :feature do
  scenario "Website has a welcome page" do
    visit "/"
    expect(page).to have_content "Home"
  end
end
