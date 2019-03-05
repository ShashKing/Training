require "application_system_test_case"

class UserSignupsTest < ApplicationSystemTestCase
  setup do
    @user_signup = user_signups(:one)
  end

  test "visiting the index" do
    visit user_signups_url
    assert_selector "h1", text: "User Signups"
  end

  test "creating a User signup" do
    visit user_signups_url
    click_on "New User Signup"

    fill_in "Password", with: @user_signup.Password
    fill_in "Username", with: @user_signup.username
    click_on "Create User signup"

    assert_text "User signup was successfully created"
    click_on "Back"
  end

  test "updating a User signup" do
    visit user_signups_url
    click_on "Edit", match: :first

    fill_in "Password", with: @user_signup.Password
    fill_in "Username", with: @user_signup.username
    click_on "Update User signup"

    assert_text "User signup was successfully updated"
    click_on "Back"
  end

  test "destroying a User signup" do
    visit user_signups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User signup was successfully destroyed"
  end
end
