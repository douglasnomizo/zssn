class InventorySerializer < ActiveModel::Serializer
  attributes :item_id, :quantity
  belongs_to :item
end
