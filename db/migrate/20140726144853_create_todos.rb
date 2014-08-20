class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.datetime :started_at
      t.datetime :finished_at
      t.timestamps
    end
  end
end
