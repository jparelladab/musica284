class Student < User
  has_many :repertoires
  has_many :pieces, through: :repertoires
  has_many :composers, through: :pieces
  has_many :workloads
  has_many :subjects, through: :workloads

  belongs_to :level, optional: true

end
