class School < ApplicationRecord
  has_many :levels
  has_one_attached :photo
end
