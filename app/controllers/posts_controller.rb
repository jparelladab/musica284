class PostsController < ApplicationController
  include ApplicationHelper
  #before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @user_posts = params[:user_id].nil? ? nil : User.find(params[:user_id]).posts.sort_by {|post| post.created_at}.reverse!
    @my_posts = current_user.posts.sort_by {|post| post.created_at}.reverse!
    @all_posts = @my_posts + (current_user.followings.map {|foll| foll.posts}.flatten).sort_by {|post| post.created_at}.reverse!
    #@general_wall = params[:general_wall]
  end

  def show
  end

  def new
    #@general_wall = params[:general_wall]
  end

  def create
    @post = Post.new(user_id: params[:user_id], text: params[:post][:text])
    respond_to do |format|
      if @post.save
        @my_posts = current_user.posts.sort_by {|post| post.created_at}.reverse!
        @user_posts = params[:user_id].nil? ? nil : User.find(params[:user_id]).posts.sort_by {|post| post.created_at}.reverse!
        @all_posts = @my_posts + (current_user.followings.map {|foll| foll.posts}.flatten).sort_by {|post| post.created_at}.reverse!
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
    @post = Post.find(params[:id])
    @usr = current_user
    #@general_wall = params[:general_wall]
    respond_to do |format|
      if @post.destroy
        @my_posts = current_user.posts.sort_by {|post| post.created_at}.reverse!
        @all_posts = @my_posts + (current_user.followings.map {|foll| foll.posts}.flatten).sort_by {|post| post.created_at}.reverse!
        format.js
      else
        format.js
      end
    end
  end

  private

end
