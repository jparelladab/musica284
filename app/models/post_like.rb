class PostLike < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user, uniqueness: {scope: :post}
  validates :post, uniqueness: {scope: :user}
end
