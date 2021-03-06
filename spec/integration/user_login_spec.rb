require "rails_helper"

RSpec.feature "user" do
  let(:user) { User.create(name: "vane", password: "pass") }

  it "can login" do
    visit login_path
    fill_in "Name", with: user.name
    fill_in "Password", with: "pass"
    click_button "Login"

    assert page.has_content?("Vane")
  end

  it "can't login with invalid password" do
    visit login_path
    fill_in "Name", with: user.name
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_content?("Invalid")
  end
end
