class User < ActiveRecord::Base
  belongs_to :groups
  has_many :projects
  has_many :tasks
end
