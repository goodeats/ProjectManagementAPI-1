class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :title
      t.string :role
      t.string :token
    end
  end
end
