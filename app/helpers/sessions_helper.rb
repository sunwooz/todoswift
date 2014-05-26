module SessionsHelper

  def logged_in?
    cookies[:todo_email].nil? || cookies[:todo_email].empty? ? false : true
  end

  def current_user
    User.find_by(email: cookies[:todo_email]) if logged_in?
  end

end
