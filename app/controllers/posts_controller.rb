class PostsController < ApplicationController


  def show
    @post = Post.find(params[:id])
    @author_id = @post.user_id
    @author = User.find_by_id(@author_id)
  end
  #
  # def new
  #   @post = Post.new
  # end
  #
  # def create
  #   @post = Post.new(post_params)
  #
  #   # if @post.save
  # end
  #
  # private
  #
  # def post_params
  #   params.require(:post).permit(:title, :body, :user_id, :city_id)
  # end
end
