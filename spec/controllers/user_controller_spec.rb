require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'controllers tests ' do
    it 'renders new template' do
      get :new
      expect(response).to render_template(:new)
    end

    it 'renders creates a user' do
      expect do
        post :create,
             params: { user: { email: 'test@gmail.com', name: 'test', occupation: 'developer', password: 'test@123' } }
      end.to change(User, :count).by(1)
      user = User.last
      expect(user.email).to eq('test@gmail.com')
    end

    it 'should show profile authenticated user' do
      user = User.create(email: 'test@gmail.com', name: 'test', occupation: 'developer', password: 'test@123' )
      session[:user_id] = user.id
      get :show, params: { user: { id: 1 } }
      expect(response).to render_template(:show)
    end

    # it 'should show profile authenticated user' do
    #   user = User.create(email: 'test@gmail.com', name: 'test', occupation: 'developer', password: 'test@123' )
    #   session[:user_id] = user.id
    #   get :show, params: { user: { id: 1 } }
    #   expect(response).to redirect_to(:show)
    # end
  end
end
