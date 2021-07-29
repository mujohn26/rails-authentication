require 'application_system_test_case'

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test 'creating a User' do
    visit root_url

    fill_in 'Email', with: 'test56@gmail.com'
    fill_in 'Name', with: 'john'
    fill_in 'Occupation', with: 'developer'
    fill_in 'Password', with: 'test@123'
    click_on 'Signup'

    assert_text 'Account was created please login'
  end
end
