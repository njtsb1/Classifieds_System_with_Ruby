require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase
  test "User registers with valid data" do
    visit "/"
    click_on "Register"

    fill_in "Name", with: "Nivaldo Beirão"
    fill_in "Email", with: "njtsb1@gmail.com"
    fill_in "Password", with: "mypassword"
    fill_in "Password confirmation", with: "mypassword"

    click_on "Register"

    assert_text "Registration done successfully!"
  end

  test "User registers with invalid data" do
    visit "/"
    click_on "Register"
    click_on "Register"

    assert_text "Error saving"
  end
end
