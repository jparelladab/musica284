class Repertoire < ApplicationRecord
  belongs_to :user
  belongs_to :piece
  validates :user, uniqueness: { scope: :piece, message: "user cannot add twice the same piece" }
end
