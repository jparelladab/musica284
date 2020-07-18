class Student < User
  has_many :repertoires, dependent: :destroy
  has_many :pieces, through: :repertoires
  has_many :composers, through: :pieces
  has_many :workloads, dependent: :destroy
  has_many :subjects, through: :workloads
  has_many :comment_pieces, dependent: :destroy

  belongs_to :level, optional: true

end
