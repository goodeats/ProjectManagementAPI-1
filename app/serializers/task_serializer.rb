class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :due_date, :status, :priority, :order, :privacy
end
