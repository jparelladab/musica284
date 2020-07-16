class Workload < ApplicationRecord
  belongs_to :student
  belongs_to :subject

  validates_uniqueness_of :student_id, scope: :subject_id

end
