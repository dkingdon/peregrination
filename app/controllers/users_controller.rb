class UsersController < ApplicationController

  # before_filter :authorize, except: [:index]
  # before_filter :authorize, only: [:show]

  def index

  end

  def show
    @user = current_user
    user_id = current_user.id
    @posts = Post.where(user_id: user_id).all
  end

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      redirect_to '/signup'
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :current_city, :email, :password, :password_confirmation)
  end

end
