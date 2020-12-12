class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new 
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:symptom_id, :onset_time_id, :contact_id, :advice_id, :text, :child_age, :enrollment_status_id).merge(user_id: current_user.id)
  end
end
