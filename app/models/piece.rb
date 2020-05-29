class Piece < ApplicationRecord
  belongs_to :composer
  belongs_to :level
end
