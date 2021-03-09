class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end
  
  def create
    posts.create(posts_params)
  end

private

def posts_params
  posts.require(:tweet).permit(:name, :colorie, :user)
end

end
