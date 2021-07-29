require 'rails_helper'

RSpec.describe UsersController, type: :model do
  user = User.new(name: 'test', occupation: 'developer', email: 'test@gmail.com', password: 'test@123')
  it 'valid user attributes' do
    expect(user).to be_valid
  end
  it 'is not valid without name' do
    user.name = nil
    expect(user).to_not be_valid
  end
  it 'is not valid without occupation' do
    user.occupation = nil
    expect(user).to_not be_valid
  end
  it 'is not valid without email' do
    user.email = nil
    expect(user).to_not be_valid
  end
  it 'is not valid without password' do
    user.email = nil
    expect(user).to_not be_valid
  end
end
