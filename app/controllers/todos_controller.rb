class TodosController < ApplicationController
  before_filter :authorize_or_login

  def index
    @todos = Todo.where(user: current_user)
  end

  def new
    @todo = Todo.new
  end

  def show
    @todo = Todo.find(params[:id])
    @todo_items = @todo.todo_items
    @todo_item = @todo.todo_items.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user = current_user

    if @todo.save
      redirect_to @todo
    else
      render :new
    end
  end

  private

    def logged_in?
      cookies[:todo_email].nil? ? false : true
    end

    def current_user
      User.find_by(email: cookies[:todo_email]) if logged_in?
    end

    def authorize_or_login
      if !logged_in?
        redirect_to login_path
      end
    end

    def todo_params
      params.require(:todo).permit(:title, :description)
    end

end
