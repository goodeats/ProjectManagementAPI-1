class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :privacy, :user, :due_date, :status, :priority, :order, :comments, :project
  belongs_to :user
  belongs_to :project
  has_many :comments
end
