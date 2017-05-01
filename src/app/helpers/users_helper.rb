module UsersHelper
  def username_from_id(user_id)
    User.find(user_id).username
  end

  def email_from_id(user_id)
    User.find(user_id).email
  end
end
