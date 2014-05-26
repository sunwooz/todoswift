class Todo < ActiveRecord::Base
  has_many :todo_items
  belongs_to :user
end
