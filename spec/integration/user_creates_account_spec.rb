require "rails_helper"

RSpec.feature "user" do
  it "creates an account" do
    visit new_user_path
    fill_in "Name", with: "Vane"
    fill_in "Password", with: "pass"
    fill_in "Password confirmation", with: "pass"
    click_button "Create User"

    assert page.has_content?("Vane")
  end
end
