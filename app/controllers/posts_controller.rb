class PostsController < ApplicationController

  def index
  end

  def show
    @post = Post.find(params[:id])
    @author_id = @post.user_id
    @author = User.find_by_id(@author_id)
  end

  def new
    @post = Post.new
    @city = City.find_by_id(params[:city_id])
  end

  def create
    current_city = City.find_by_id(params[:id])
    new_post = Post.new(post_params)
    if new_post.save
      redirect_to city_path
    else
      flash[:error] = new_post.errors.full_messages[0] +"!"
      redirect_to new_city_post_path(current_city)
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find_by_id(params[:id])
    @post.update(post_params)
    redirect_to current_user
  end

  def destroy
    @post = Post.find_by_id(params[:id])
    @post.destroy
    redirect_to user_path

  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id, :city_id)
  end
end
