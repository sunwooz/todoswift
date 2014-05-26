class TodosController < ApplicationController

  def index
    @todos = Todo.all
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

    if @todo.save
      redirect_to @todo
    else
      render :new
    end
  end

  private

    def todo_params
      params.require(:todo).permit(:title, :description)
    end

end
