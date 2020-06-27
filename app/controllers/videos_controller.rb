class VideosController < ApplicationController
  def index
    if params[:user_id].present?
      @user_videos = User.find(params[:user_id]).videos
    else
      @all_videos = Video.all
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
