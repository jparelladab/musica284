class LevelsController < ApplicationController

  before_action :set_level, only: [:show, :edit, :update, :destroy]

  def index
    @levels = Level.all
    @my_level = current_user.level
    @previous_levels = @my_level.nil? ? nil : Level.where(number:(1..@my_level.number)).to_a
    @next_levels = @levels.to_a - [@my_level] - @previous_levels.to_a
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
    if @level.update(level_params)
      flash[:notice] = "level successfully updated"
      redirect_to level_path(@level)
    else
      flash[:notice] = "Sorry, an error has occurred."
      redirect_to levels_path
    end
  end

  def destroy
  end

  private

  def level_params
    params.require(:level).permit(:name, :number, :description, :photo)
  end

  def set_level
    @level = Level.find(params[:id])
  end
end
