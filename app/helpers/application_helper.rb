module ApplicationHelper
  def find_photo(element)
    if element.photo.attached?
        return element.photo.key
    else
        return "nqeWdH9m2xAE9MhopqXgeZFJ.jpg"
    end
  end
end
