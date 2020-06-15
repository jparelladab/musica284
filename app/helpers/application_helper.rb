module ApplicationHelper

  def find_photo(element)
    if element.avatar.attached?
        return element.avatar.key
    else
        return "nqeWdH9m2xAE9MhopqXgeZFJ.jpg"
    end
  end
  def find_wallPaper(element)
    if element.wallPaper.attached?
        return element.wallPaper.key
    else
        return "sunset-digital-art-mountains-low-poly-wallpaper-preview_ycyatc.jpg"
    end
  end

  def youtube_video(url)
    unless(url.nil?)
      video_id = url.split("?v=")[1]
      embed_url = "https://www.youtube.com/embed/" + video_id
      render :partial => 'shared/video', :locals => { :url => embed_url }
    end
  end

end
