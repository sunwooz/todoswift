class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(email: params[:user][:email])

    if @user.save
      redirect_to login_path
    else
      render :new
    end
  end

end
