class UsersController < ApplicationController
  before_action :authorized, only: [:show]

  # GET /users or /users.json
  def index
    # @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show; end

  # GET /users/new
  def new

  end

  # POST Signup /users
  def create
    @user = User.create(user_params)

    if @user.valid?
      @user.save
      redirect_to login_path, notice: 'Successfully created account'
    else
      redirect :new
    end
  end
  private
  def user_params
    params.permit(:name, :occupation, :email, :password)
  end
end
