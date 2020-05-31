class PagesController < ApplicationController
  #skip_before_action :authenticate_user!
  def home
    @followed_users = Follow.where(follower_id: current_user.id)
    @all_users = User.all
  end

  def about
  end

  def contact
  end
end
