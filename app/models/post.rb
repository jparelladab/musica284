class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_one_attached :avatar
  has_many :post_likes

  def liked_by(user)
    !user.post_likes.where(post_id: self.id).empty?
  end

  def find_post_like(user)
    self.post_likes.where(user_id: user.id).first
  end

end
