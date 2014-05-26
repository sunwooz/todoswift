class SessionsController < ApplicationController

  def new
  end

  def create
    if User.find_by(email: params[:email])
      cookies[:todo_email] = params[:email] 
      redirect_to todos_path
    else
      redirect_to new_user_path
    end
  end

  def destroy
    cookies[:todo_email] = nil
    redirect_to login_path
  end

end
