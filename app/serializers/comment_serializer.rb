class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body

  def created_at
    object.created_at.strftime('%m-%d-%y')
  end
end
