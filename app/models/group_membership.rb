class GroupMembership < ActiveRecord::Base
  has_many :users
  has_many :groups
end
