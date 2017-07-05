class Item < ActiveRecord::Base
  belongs_to :list

  validates :item_title, length: { minimum: 1, maximum: 100 }, presence: true
  validates :description, presence: true, length: { minimum: 1 }
end
