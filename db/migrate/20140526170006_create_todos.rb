class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.datetime :due_date
      t.boolean :active
      t.timestamps
    end
  end
end
