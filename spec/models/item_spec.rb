require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:list) { List.create!(title: "New List Title") }
  let(:item) { Item.create!(title: "New Item Title", description: "Item description", status: false, list: list) }

  describe "attributes" do
    it "has title, body, and status attributes" do
      expect(item).to have_attributes(title: "New Item Title", description: "Item description", status: false)
    end
  end
end
