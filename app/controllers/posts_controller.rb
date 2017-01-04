class PostsController < ApplicationController


  def show
    @post = Post.find(params[:id])
    @author_id = @post.user_id
    @author = User.find_by_id(@author_id)
  end
end
