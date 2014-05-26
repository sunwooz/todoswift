class TodoItem < ActiveRecord::Base
  belongs_to :todo
  acts_as_list scope: :todo
end
