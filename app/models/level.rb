class Level < ApplicationRecord
  has_many :subjects
  has_one_attached :avatar
  has_many :pieces
  has_many :users
end
