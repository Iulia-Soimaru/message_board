class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(title: params[:post][:title], content: params[:post][:content])
    User.first.posts << @post
    redirect_to @post
  end

end
