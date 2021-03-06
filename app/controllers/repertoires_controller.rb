class RepertoiresController < ApplicationController
  def index
    @all_pieces = Piece.all
    @user_repertoire = current_user.repertoires
    @pipeline = Piece.where(pipeline: true)
    @favorites = Piece.where(favorite: true)
    @other_pieces = @all_pieces - @user_repertoire.map {|rep| rep.piece} - @pipeline - @favorites
  end

  def show
  end

  def new
  end

  def create
    @repertoire = Repertoire.new(user_id: current_user.id, piece_id: params[:piece_id])
    if @repertoire.save
      flash[:notice] = "repertoire successfully created"
      redirect_to repertoires_path
    else
      flash[:notice] = "Sorry, an error has occurred."
      redirect_to repertoires_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def repertoire_params
    params.require(:repertoire).permit(:piece_id)
  end

  def set_repertoire
    @repertoire = Repertoire.find(params[:id])
  end

end
