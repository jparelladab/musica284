class VideosController < ApplicationController
  def index
    @user_videos = User.find(params[:user_id]).videos
  end

  def show
  end

  def new
  end

  def edit
  end
end
