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
    respond_to do |format|
      format.js
    end
  end

  def edit
  end
end
