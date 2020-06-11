class Video < ApplicationRecord
  belongs_to :user
  belongs_to :composer, optional: true
  validates :url, presence: true
end
