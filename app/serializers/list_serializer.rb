class ListSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :list_title

  def list_title
    object.list_title
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
