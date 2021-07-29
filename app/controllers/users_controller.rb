class UsersController < ApplicationController
  before_action :authorized, only: [:show]

  # GET /users/1 or /users/1.json
  def show; end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST Signup /users
  def create
    @user = User.create(user_params)

    if @user.valid?
      @user.save
      redirect_to login_path, notice: 'Account was created please login'
    else
     render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :occupation, :email, :password)
  end
end
