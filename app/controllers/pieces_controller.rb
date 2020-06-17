class PiecesController < ApplicationController
  before_action :set_piece, only: [:show, :edit, :update, :destroy]
  def index
    @pieces = Piece.all
  end

  def show
    @piece = Piece.find(params[:id])
    @comment_piece = CommentPiece.new
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)
    if @piece.save
      flash[:notice] = "piece successfully created"
      redirect_to piece_path(@piece)
    else
      flash[:notice] = "Sorry, an error has occurred."
      render :new
    end
  end

  def edit
  end

  def update
    if @piece.update(piece_params)
      flash[:notice] = "piece successfully created"
      redirect_to piece_path(@piece)
    else
      flash[:notice] = "Sorry, an error has occurred."
      redirect_to edit_piece_path(@piece)
    end
  end

  def destroy
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :composer_id, :level_id, :description, :rating, :avatar)
  end

  def set_piece
    @piece = Piece.find(params[:id])
  end

end
