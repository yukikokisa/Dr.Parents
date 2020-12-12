class PostsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
    @posts = Post.all
  end

  def new 
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      render :create
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:symptom_id, :onset_time_id, :contact_id, :advice_id, :text, :child_age, :enrollment_status_id).merge(user_id: current_user.id)
  end
end
