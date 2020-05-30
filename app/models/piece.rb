class Piece < ApplicationRecord
  belongs_to :composer
  belongs_to :level
  has_one_attached :photo
end
