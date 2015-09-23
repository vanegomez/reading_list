require "rails_helper"

RSpec.feature "user" do
  it "creates an account" do
    visit new_user_path
    fill_in "Username", with: "rachel" #using label "Username"
    fill_in "Password", with: "password"
    click_button "Create Account"

    assert page.has_content?("Welcome, rachel")
  end
end
