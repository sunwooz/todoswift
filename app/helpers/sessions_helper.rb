module SessionsHelper

  def logged_in?
    if cookies[:todo_email].nil? || cookies[:todo_email].empty?
      return false
    else
      !User.find_by(email: cookies[:todo_email]).nil? ? true : false
    end
  end

  def current_user
    User.find_by(email: cookies[:todo_email]) if logged_in?
  end

end
