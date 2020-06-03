class Level < ApplicationRecord
  has_many :subjects
  has_one_attached :photo

  #has_many :levels_pieces
  has_many :pieces
end
