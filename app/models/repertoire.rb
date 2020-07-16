class Repertoire < ApplicationRecord
  belongs_to :student
  belongs_to :piece
  validates :student, uniqueness: { scope: :piece, message: "student cannot add twice the same piece" }
end
