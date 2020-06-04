class ComposersController < ApplicationController
  before_action :set_composer, only: [:show, :edit, :update, :destroy]

  def index
    @composers = Composer.all
  end

  def show
    @composer = Composer.find(params[:id])
  end

  def new
    @composer = Composer.new
  end

  def create
    @composer = Composer.new(composer_params)
    if @composer.save
      flash[:notice] = "composer successfully created"
      redirect_to composer_path(@composer)
    else
      flash[:notice] = "Sorry, an error has occurred."
      redirect_to composers_path
    end
  end

  def edit
  end

  def update
    if @composer.update(composer_params)
      flash[:notice] = "composer successfully updated"
      redirect_to composer_path(@composer)
    else
      flash[:notice] = "Sorry, an error has occurred."
      redirect_to composers_path
    end
  end

  def destroy
  end

  private

  def composer_params
    params.require(:composer).permit(:name, :biography, :rating, :photo)
  end

  def set_composer
    @composer = Composer.find(params[:id])
  end
end
