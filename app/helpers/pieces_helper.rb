module PiecesHelper
  def trackname(piece)
    return piece.composer.name + " - " + piece.name
  end
end
