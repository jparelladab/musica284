class RepertoiresController < ApplicationController
  def index
    @user_repertoire = current_user.repertoires
    @all_pieces = Piece.all
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

  def repertoire_params
    params.require(:repertoire).permit(:piece_id)
  end

  def set_repertoire
    @repertoire = Repertoire.find(params[:id])
  end

end
