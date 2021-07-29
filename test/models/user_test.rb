require 'rspec'

RSpec.describe User, type: :model do
  it 'valid user attributes' do
    expect(User.new).to_be_valid
  end
  it 'is not valid without name' do
  end
  it 'is not valid without occupation' do
  end
  it 'is not valid without email' do
  end
  it 'is not valid without password' do
  end
end

# class UserTest < ActiveSupport::TestCase

#   test "valid user" do
#     user = User.new(email: 'test@gmail.com', name: 'test', occupation: 'developer', password: 'test@123')
#     user.valid?
#   end

#   test "invalid user without email" do
#     user = User.new(name: 'test', occupation: 'developer', password: 'test@123')
#     refute user.valid?, 'user is valid without email'
#     assert_not_nil user.errors[:email], 'no validation for email present'
#   end

#   test "invalid user without name" do

#   end
#   # test "the truth" do
#   #   assert true
#   # end
# end
