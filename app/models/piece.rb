class Piece < ApplicationRecord
  belongs_to :composer
  belongs_to :level
  has_one_attached :avatar

  has_many :repertoires, dependent: :destroy
  has_many :users, through: :repertoires, dependent: :destroy

  has_many :comment_pieces, dependent: :destroy

  #has_many :levels, through: :levels_pieces
end
