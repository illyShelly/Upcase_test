require "rails_helper"

module Features
  def sign_in
    visit root_path

    fill_in "Email", with: "person@example.com"
    click_on "Sign in"
  end
end


# open spec/rails_helper -> config.include Features, type: :feature within (include feature model within our spec)
# needs to add something: Unable to find link or button "Add a new todo"
# 1. visit rooth_path, fill_in with email
# 2. open controllers before_filter :authentication user
