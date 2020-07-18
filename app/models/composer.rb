class Composer < ApplicationRecord
  has_many :pieces
  has_one_attached :avatar
  has_many :videos, dependent: :destroy
end
