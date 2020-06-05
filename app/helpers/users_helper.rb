module UsersHelper
  def fullname(user)
    return "#{user.first_name} #{user.last_name}"
  end
end
