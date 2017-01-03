class UsersController < ApplicationController

  before_filter :authorize, except: [:index]

  def index

  end

  def show
    @user = User.find_by_id(parmas[:id])
  end

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :current_city, :email, :password, :password_confirmation)
  end

end
