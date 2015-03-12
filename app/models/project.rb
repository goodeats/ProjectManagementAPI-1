class Project < ActiveRecord::Base
  belongs_to :groups
  belongs_to :users
  has_many :tasks
end
