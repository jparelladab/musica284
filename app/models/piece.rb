class Piece < ApplicationRecord
  belongs_to :composer
  belongs_to :level
  has_one_attached :photo
  has_many :repertoires
  has_many :user, through: :repertoires
end
