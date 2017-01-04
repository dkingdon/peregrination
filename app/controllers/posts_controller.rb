class PostsController < ApplicationController


  def show
    @user = current_user
    @post = Post.find(params[:user_id])
  end
end
