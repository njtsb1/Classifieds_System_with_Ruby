require "application_system_test_case"

class LogoutsTest < ApplicationSystemTestCase
  test "be able to logout the user" do
    user = FactoryBot.create(:user)
    login_as(user)

    click_on "To go out"

    assert_equal new_session_path, current_path
    assert_text "Session ended"
  end
end
