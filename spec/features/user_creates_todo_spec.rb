require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    # visit root_path
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "Submit"

    expect(page).to have_css ".todos li", text: "Buy milk"
  end
end


# 3 different methods using:
# click_on accept string
# fill_in accept string with: ...link or button
# visit and some verification

# Fixing - update capybara to 2.6.0.
# undefined method `normalize_params' for Rack::Utils:Module

# 2. sign in user -> method define myself
