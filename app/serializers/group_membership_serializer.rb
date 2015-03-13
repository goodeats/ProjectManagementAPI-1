class GroupMembershipSerializer < ActiveModel::Serializer
  attributes :id, :role, :users, :groups
  has_many :users
  has_many :groups
end
