require 'test_helper'

class UserSignupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_signup = user_signups(:one)
  end

  test "should get index" do
    get user_signups_url
    assert_response :success
  end

  test "should get new" do
    get new_user_signup_url
    assert_response :success
  end

  test "should create user_signup" do
    assert_difference('UserSignup.count') do
      post user_signups_url, params: { user_signup: { Password: @user_signup.Password, username: @user_signup.username } }
    end

    assert_redirected_to user_signup_url(UserSignup.last)
  end

  test "should show user_signup" do
    get user_signup_url(@user_signup)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_signup_url(@user_signup)
    assert_response :success
  end

  test "should update user_signup" do
    patch user_signup_url(@user_signup), params: { user_signup: { Password: @user_signup.Password, username: @user_signup.username } }
    assert_redirected_to user_signup_url(@user_signup)
  end

  test "should destroy user_signup" do
    assert_difference('UserSignup.count', -1) do
      delete user_signup_url(@user_signup)
    end

    assert_redirected_to user_signups_url
  end
end
