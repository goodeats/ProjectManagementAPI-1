class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :privacy, :projects, :users
  has_many :projects
  has_many :users
end
