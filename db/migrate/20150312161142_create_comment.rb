class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.timestamp
      t.belongs_to :tasks, index: true
      t.belongs_to :users, index: true
    end
    add_foreign_key :comments, :tasks
    add_foreign_key :comments, :users
  end
end
