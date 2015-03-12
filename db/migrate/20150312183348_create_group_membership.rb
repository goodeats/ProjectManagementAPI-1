class CreateGroupMembership < ActiveRecord::Migration
  def change
    create_table :group_memberships do |t|
      t.string :role
    end
  end
end
