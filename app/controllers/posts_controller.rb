class PostsController < ApplicationController
  def index
    @my_posts = current_user.posts
    @all_posts = @my_posts + (current_user.followings.map {|foll| foll.posts}.flatten).sort_by {|post| post.created_at}
  end

  def show
  end

  def new
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
