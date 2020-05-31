class FollowsController < ApplicationController

  def index
    @follows = Follow.all
  end

  def show
    @follow = follow.find(params[:id])
  end

  def new
  end

  def create
    raise
    @new_follow = Follow.new(follower_id: current_user.id, followed_user_id: params[:user_id])
    if @new_follow.save
      flash[:notice] = "New fellow foodie created!"
      redirect_to root_path
    else
      flash[:notice] = "Sorry, an error has occurred. Please try again later or contact the MangeToo team."
      render :index
    end
  end

  def edit
  end

  def update

  end

  def destroy
  end

end
