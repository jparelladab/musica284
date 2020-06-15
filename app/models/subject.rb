class Subject < ApplicationRecord
  has_many :pieces
  has_one_attached :avatar

  has_many :workloads
  has_many :users, through: :workloads

  belongs_to :level
end
