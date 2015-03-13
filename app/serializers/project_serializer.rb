class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :due_date, :privacy, :group, :tasks
  belongs_to :group
  has_many :tasks
end
