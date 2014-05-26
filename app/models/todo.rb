class Todo < ActiveRecord::Base
  has_many :todo_items, -> { order("position ASC") }
  belongs_to :user
end
