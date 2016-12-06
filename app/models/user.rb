class User < ApplicationRecord
  enum gender: [ :male, :female ]

  validates :gender, presence: true
  validates :name, presence: true, uniqueness: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }

  has_one :location
  has_many :inventory
  has_many :items, through: :inventory
end
