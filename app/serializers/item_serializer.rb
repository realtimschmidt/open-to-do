class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :item_title, :description, :status

  def item_title
    object.item_title
  end

  def description
    object.description
  end

  def status
    object.status
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
