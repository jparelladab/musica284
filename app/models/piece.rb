class Piece < ApplicationRecord
  belongs_to :composer
  has_one_attached :photo

  has_many :repertoires
  has_many :users, through: :repertoires

  has_many :levels_pieces
  has_many :levels, through: :levels_pieces
end
