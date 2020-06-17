class Composer < ApplicationRecord
  has_many :pieces
  has_one_attached :photo
  has_many :videos
end
