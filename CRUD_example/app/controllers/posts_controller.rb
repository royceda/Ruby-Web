class PostsController < ApplicationController


  #Usefull to avoid code duplication
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  private

  def set_post
    @post = Post.find(params[:id])
  end



  public

  def index
    @posts = Post.includes(:category).all
  end

  def show
    #@post = Post.find(params[:id])
  end

  def edit
    #@post = Post.find(params[:id])
    @categories = Category.all
  end

  def update
    #@post = Post.find(params[:id])
    params.inspect
    if @post.update(params.require(:post).permit(:name, :content, :category_id))
      redirect_to posts_url, notice: 'The article has been edited succesully :) '
    else
      render :edit
    end
  end


  def create
    #@post = Post.find(params[:id])
    @post = Post.new
    params.inspect
    if @post.update(params.require(:post).permit(:name, :content, :category_id))
      redirect_to posts_url, notice: 'The article has been added succesully :) '
    else
      render :new
    end
  end


  def destroy
    #@post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url, notice: 'The article has been deleted succesully :) '
  end


  def new
    @post = Post.new
  end



end
