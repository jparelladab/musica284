class Piece < ApplicationRecord
  belongs_to :composer
  belongs_to :level
  has_one_attached :photo

  has_many :repertoires
  has_many :users, through: :repertoires

  has_many :comment_pieces

  #has_many :levels, through: :levels_pieces
end
