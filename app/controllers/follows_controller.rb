class FollowsController < ApplicationController
  #include UsersHelper
  def index
    if params[:query].present?
      @followings = current_user.followings.where("first_name ILIKE ?", "%#{params[:query]}%") | current_user.followings.where("last_name ILIKE ?", "%#{params[:query]}%")
    else
      @followings = current_user.followings
    end
    @all_users = User.all
    @all_follows = Follow.all
    @not_followed_users = User.all - @followings - [current_user]
    @users = User.geocoded
    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def create
    puts params
    @new_follow = Follow.new(follower_id: current_user.id, followed_user_id: params[:followed])
    respond_to do |format|
      if @new_follow.save
        Conversation.create(sender_id: current_user.id, receiver_id: params[:followed])
        flash[:notice] = "New Follow created"
        format.html {redirect_to user_path(params[:followed])}
      else
        format.js
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @follow = Follow.find {|f| f.follower_id == current_user.id && f.followed_user_id == @user.id}
    respond_to do |format|
      if @follow.destroy
        format.html { redirect_to user_path(@user)}
      else
        format.js
      end
    end
  end

  private

  def follow!(followed)
    Follow.create(follower_id: current_user.id, followed_user_id: followed.id)
  end
end
