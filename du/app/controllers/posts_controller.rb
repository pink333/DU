class PostsController < ApplicationController
  def index
    @posts = Post.search(params[:search])
  end

  def show
    @post = Post.find(params[:id])
  end 

  def search
   @posts = Post.search(params[:search])
  end
end
