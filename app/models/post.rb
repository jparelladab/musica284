class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_one_attached :avatar
  has_many :post_likes
end
