class Level < ApplicationRecord
  has_many :subjects
  has_one_attached :photo
  has_many :pieces
  has_many :subjects
end
