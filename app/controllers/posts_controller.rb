class PostsController < ApplicationController
  before_action :authenticate_user, except: :index
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(allowed_post_params)
    @post[:user_id] = current_user[:id]

    if @post.save
      redirect_to posts_path
    else
      flash.now[:alert] = @post.errors.full_messages
      # puts "Errors are #{@post.errors.full_messages}"
      render 'new', status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
  end

  private

  def authenticate_user
    @user = current_user
    render 'access_denied', status: :unauthorized if @user.nil?
  end
  
  def allowed_post_params
    params.require(:post).permit(:title, :body)
  end
end
