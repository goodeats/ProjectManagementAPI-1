class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.date :due_date
      t.boolean :privacy
      t.belongs_to :group, index: true
    end
    add_foreign_key :projects, :groups
  end
end
