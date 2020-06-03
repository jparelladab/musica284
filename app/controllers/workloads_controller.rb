class WorkloadsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
     @workload = Workload.new(user_id: current_user.id, subject_id: params[:subject_id])
    if @workload.save
      flash[:notice] = "workload successfully created"
      redirect_to subjects_path
    else
      flash[:notice] = "Sorry, an error has occurred."
      redirect_to subjects_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
