class Project < ActiveRecord::Base
  belongs_to :group, dependent: :destroy
  has_many :tasks
end
