class CreateTodoitems < ActiveRecord::Migration[7.1]
  def change
    create_table :todoitems do |t|
      t.string :label
      t.boolean :done

      t.timestamps
    end
  end
end
