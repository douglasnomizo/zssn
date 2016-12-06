class Item < ApplicationRecord
  validates :name, presence: true
  validates :points, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
