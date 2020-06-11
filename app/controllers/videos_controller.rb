class VideosController < ApplicationController
  def index
    @my_videos = current_user.videos
    @all_videos = Video.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
