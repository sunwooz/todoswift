require 'pry'
class TodoItemsController < ApplicationController

  def create
    @todo = Todo.find(params[:todo_id])

    @todo_item = @todo.todo_items.new(todo_item_params)

    if @todo_item.save
      redirect_to @todo
    else
      render :show
    end

  end

  def update_checkbox
    todo_item = TodoItem.find(params[:todo_item_id].to_i)
    params[:checked] == "true" ? todo_item.checked = true : todo_item.checked = false
    todo_item.save
    render nothing: true
  end

  private

    def todo_item_params
      params.require(:todo_item).permit(:title, :description, :due_date)
    end

end
