class UserSerializer < ActiveModel::UserSerializer
  attributes :id, :username, :email, :title, :avatar, :group, :token, :projects, :tasks
  has_many :projects
  has_many :tasks
end
