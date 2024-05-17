class AddTodolistIdToTodoitems < ActiveRecord::Migration[7.1]
  def change
    add_reference :todoitems, :todolist, foreign_key: true
  end
end
