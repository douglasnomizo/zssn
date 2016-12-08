class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender
  has_one :location
  has_many :inventory
  has_many :items
end
