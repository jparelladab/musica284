class RecordingsController < ApplicationController
  def index
    @my_recordings = current_user.recordings
    @all_recordings = Recording.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
