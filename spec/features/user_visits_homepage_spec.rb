# _spec is suffix rspec require it's test file
require "rails_helper"

feature "user visits homepege" do
  scenario "sucessfully" do
    visit root_path

    expect(page).to have_css 'h1', text: "Todos"
  end
end


# scenario individual scenario for test -> capybara
# 1. visit homepage and see something e.x.: <h1>"todos"
# has css selector h1?
#
