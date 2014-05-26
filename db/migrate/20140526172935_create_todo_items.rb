class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :title
      t.text :description
      t.datetime :due_date
      t.boolean :active
      t.integer :todo_id
      t.timestamps
    end
  end
end
