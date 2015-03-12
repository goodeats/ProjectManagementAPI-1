class CreateTask < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :due_date
      t.string :status
      t.string :priority
      t.integer :order
      t.boolean :privacy
      t.belongs_to :projects, index: true
      t.belongs_to :users, index: true
    end
    add_foreign_key :tasks, :projects
    add_foreign_key :tasks, :users
  end
end
