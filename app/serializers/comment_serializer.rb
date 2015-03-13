class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :task
  belongs_to :task

  def created_at
    object.created_at.strftime('%m-%d-%y')
  end
end
