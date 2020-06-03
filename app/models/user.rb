class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :repertoires
  has_many :pieces, through: :repertoires

  has_many :composers, through: :pieces
  has_many :subjects
  has_one_attached :photo

  # Will return an array of follows for the given user instance
  has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow"

  # Will return an array of users who follow the user instance
  has_many :followers, through: :received_follows, source: :follower

  #####################

  # returns an array of follows a user gave to someone else
  has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"

  # returns an array of other users who the user has followed
  has_many :followings, through: :given_follows, source: :followed_user

  private

  def follows?(current_user, user)
    return current_user.followings.include? user
  end

  def is_followed_by(user)
    return current_user.followers.include? user
  end

  def follow(current_user, user)
    Follow.create(follower_id: current_user.id, followed_user_id: user.id)
  end

end
