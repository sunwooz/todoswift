module TodosHelper

  def active_or_not(todo_item)
    todo_item.checked? ? true : false
  end
end
