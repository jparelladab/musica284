class Subject < ApplicationRecord
  has_many :pieces
  has_one_attached :photos
end
