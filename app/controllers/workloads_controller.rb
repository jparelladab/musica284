class WorkloadsController < ApplicationController

  def index
    @my_courses = current_user.subjects
    @other_courses = Subject.where(level_id: current_user.level)
  end

  def show
  end

  def new
  end

  def create
    @workload = Workload.new(user_id: params[:user_id], subject_id: params[:subject_id])
     respond_to do |format|
      if @workload.save
        format.js
      else
        format.js
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @workload = Workload.where(user_id: params[:user_id], subject_id: params[:subject_id]).first
    respond_to do |format|
      @workload.destroy
      format.js
    end
  end

end
