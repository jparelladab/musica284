class PostsController < ApplicationController
  #before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    #puts "Params: " + params.to_s
    @user_posts = User.find(params[:user_id]).posts
    #@my_posts = current_user.posts.sort_by {|post| post.created_at}.reverse!
    #@all_posts = @my_posts + (current_user.followings.map {|foll| foll.posts}.flatten).sort_by {|post| post.created_at}
  end

  def show
  end

  def new
  end

  def create
    @post = Post.new(user_id: params[:user_id], text: params[:post][:text])
    respond_to do |format|
      if @post.save
        format.js
      else
        format.js
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private


end
