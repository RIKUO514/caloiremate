class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  
  def create
    Post.create(posts_params)
  end

private

def posts_params
  params.require(:post).permit(:name, :text, :user, :image)
end

end
