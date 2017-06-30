require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:list) { List.create!(list_title: "New List Title") }
  let(:item) { Item.create!(item_title: "New Item Title", description: "Item description", status: false, list: list) }

  describe "attributes" do
    it "has title, body, and status attributes" do
      expect(item).to have_attributes(item_title: "New Item Title", description: "Item description", status: false)
    end
  end
end
