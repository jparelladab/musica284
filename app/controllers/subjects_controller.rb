class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  def index
    @my_subjects = current_user.subjects
    @other_subjects = Subject.all - @my_subjects
    @other_subjects_level = current_user.level.subjects - @my_subjects
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:notice] = "subject successfully created"
      redirect_to subject_path(@subject)
    else
      flash[:notice] = "Sorry, an error has occurred."
      redirect_to new_subject_path(@subject)
    end
  end

  def edit
  end

  def update
    if @subject.update(subject_params)
      flash[:notice] = "subject successfully updated"
      redirect_to subject_path(@subject)
    else
      flash[:notice] = "Sorry, an error has occurred."
      redirect_to subjects_path
    end
  end

  def destroy
    subject = Subject.find(params[:id])
    if subject.destroy
      flash[:notice] = "subject successfully removed."
      redirect_to subjects_path
    else
      flash[:notice] = "Sorry, an error has occurred."
      redirect_to subject_path
    end
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :level_id, :description, :rating)
  end

  def set_subject
    @subject = Subject.find(params[:id])
  end

end
