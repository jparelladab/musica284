class Subject < ApplicationRecord
  has_many :pieces
  has_one_attached :avatar

  has_many :workloads, dependent: :destroy
  has_many :students, through: :workloads

  belongs_to :level
end
