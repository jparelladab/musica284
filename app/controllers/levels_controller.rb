class LevelsController < ApplicationController
  before_action :set_level, only: [:show, :edit, :update, :destroy]

  def index
    @levels = Level.all
  end

  def show
    @level = Level.find(params[:id])
  end

  def new
    @level = Level.new
  end

  def create
     @level = Level.new(level_params)
    if @level.save
      flash[:notice] = "level successfully created"
      redirect_to level_path(@level)
    else
      flash[:notice] = "Sorry, an error has occurred."
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def level_params
    params.require(:level).permit(:name, :number, :description)
  end

  def set_level
    @level = Level.find(params[:id])
  end
end
