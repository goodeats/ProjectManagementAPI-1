class UserSerializer < ActiveModel::UserSerializer
  attributes :id, :username, :password_digest, :title, :avatar, :token
end
