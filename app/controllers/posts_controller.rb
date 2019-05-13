class PostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_url
    else
      render 'new'
    end
  end


  private

  def post_params
    params.require(:post).permit(:song,:member,:comment)
  end
end
