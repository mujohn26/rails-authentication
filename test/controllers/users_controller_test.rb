require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test 'should get index' do
    get new_user_path
    assert_response :success
  end

  test 'should create user' do
    assert_difference('User.count') do
      post users_url,
           params: { user: { email: 'test@gmail.com', name: 'test', occupation: 'developer', password: 'test@123' } }
    end
    assert_redirected_to login_url
  end

  test 'should show user' do
    get profile_url(@user)
    assert_response :redirect
  end
end
