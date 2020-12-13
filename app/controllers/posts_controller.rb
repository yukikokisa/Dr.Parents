class PostsController < ApplicationController
  before_action :authenticate_user!, only: :new
  before_action :set_post, only: [:edit, :show]

  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new 
    @post = Post.new
  end

  def create
    post = Post.create(post_params)
    if post.save
      render :create
    else
      render :new
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      render :update
    else
      render :edit
    end
  end

  def show
  end

  private
  def post_params
    params.require(:post).permit(:symptom_id, :onset_time_id, :contact_id, :advice_id, :text, 
    :child_age, :enrollment_status_id).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
