class CommentPiecesController < ApplicationController
  before_action :set_comment_piece, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def create
    piece_id = params[:piece_id]
    @comment_piece = CommentPiece.new(user_id: current_user.id, piece_id: piece_id, comment: params[:comment_piece][:comment])
    if @comment_piece.save
      flash[:notice] = "comment_piece successfully created"
      redirect_to piece_path(piece_id)
    else
      flash[:notice] = "Sorry, an error has occurred."
      redirect_to piece_path(@comment_piece.piece)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
