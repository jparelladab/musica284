class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :posts, dependent: :destroy
  has_many :post_likes, dependent: :destroy
  has_one_attached :avatar
  has_one_attached :wallPaper
  has_many_attached :photos
  has_many :comment_pieces, dependent: :destroy
  has_many :videos, dependent: :destroy

  # Will return an array of follows for the given user instance
  has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow", dependent: :destroy
  # Will return an array of users who follow the user instance
  has_many :followers, through: :received_follows, source: :follower, dependent: :destroy
  #####################
  # returns an array of follows a user gave to someone else
  has_many :given_follows, foreign_key: :follower_id, class_name: "Follow", dependent: :destroy
  # returns an array of other users who the user has followed
  has_many :followings, through: :given_follows, source: :followed_user, dependent: :destroy

  has_many :received_messages, foreign_key: :receiver_id, class_name: "Conversation", dependent: :destroy
  has_many :sent_messages, foreign_key: :sender_id, class_name: "Conversation", dependent: :destroy

  def full_name
    self.first_name + " " + self.last_name
  end

  def is_enrolled_to(subject)
    !Workload.where(student_id: self.id, subject_id: subject.id).empty?
  end

  def conversations
    Conversation.where("sender_id = ? OR receiver_id = ?", self.id, self.id).sort_by {|conv| conv.updated_at}
  end

  def conversations_recipients
    self.conversations.map {|conv| conv.recipient(self)}
  end

  def find_conversation_with(recipient)
    conv = Conversation.where("sender_id = ? AND receiver_id = ?", self.id, recipient.id)
    if conv.empty?
      conv = Conversation.where("sender_id = ? AND receiver_id = ?", recipient.id, self.id)
    end
    conv
  end

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
