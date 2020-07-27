class VideosController < ApplicationController
  def index
    if params[:user_id].present?
      @user_videos = User.find(params[:user_id]).videos.sort_by {|v| v.created_at}.reverse!
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

  def create
    @video = Video.new(user_id: params[:user_id], url: params[:video][:url], title: params[:video][:title])
    puts params[:video]
    if @video.save
      flash[:notice] = "video successfully created"
      redirect_to user_path(@video.user)
    else
      flash[:notice] = "Sorry, an error has occurred."
      render partial: "new"
    end
  end

  def edit
  end

  def destroy
    @video = Video.find(params[:id])
    respond_to do |format|
      @video.destroy
      format.js
    end
  end

end
