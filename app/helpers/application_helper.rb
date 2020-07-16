module ApplicationHelper
  require 'faker'


  def find_photo(element)
    if element.photo.attached?
        return element.photo.key
    else
        return "nqeWdH9m2xAE9MhopqXgeZFJ.jpg"
    end
  end

  def find_avatar(user)
    if user.avatar.attached?
        return user.avatar.key
    else
        return "Bj9yxqpaRCbTPGJZpP3MVZZD.jpg"
    end
  end

  def find_wallPaper(element)
    if element.wallPaper.attached?
        return element.wallPaper.key
    else
        return "sunset-digital-art-mountains-low-poly-wallpaper-preview_ycyatc.jpg"
    end
  end

  def render_youtube_video(text)
      regex = /www.youtube.com\/watch\?v=(\w{11})/
    unless(text.nil? || text.match(regex).nil?)
      video_id = text.match(regex)[1]
      #video_id = url.split("?v=")[1]
      embed_url = "https://www.youtube.com/embed/" + video_id
      render :partial => 'shared/video', :locals => { :url => embed_url }
    end
  end

  def remove_video_link_from_text(text)
    regex = /(https:\/\/)?www.youtube.com\/watch\?v=(\w{11})/
    text.sub(regex, "")
  end

  def conversation_other(conversation)
    if (conversation.sender_id == current_user.id)
      return User.find(conversation.receiver_id)
    else
      return User.find(conversation.sender_id)
    end
  end

  def user_posts(user_id)
    User.find(user_id).posts.sort_by {|post| post.created_at}.reverse!
  end

  def all_posts(user_id)
    user_posts(user_id) + (User.find(user_id).followings.map {|foll| foll.posts}.flatten).sort_by {|post| post.created_at}.reverse!
  end

end
