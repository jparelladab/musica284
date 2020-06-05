class Message < ApplicationRecord

  belongs_to :sender, foreign_key: :sender_id, class_name: "User"
  belongs_to :receiver, foreign_key: :receiver_id, class_name: "User"

  def find_photo
    if self.photo.attached?
        return cl_image_tag self.photo.key
    else
        return cl_image_tag("WHCKHqceMQcSYcaFK1fdBkT6.jpg")
    end
  end

end
