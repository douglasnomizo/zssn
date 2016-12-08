class LocationSerializer < ActiveModel::Serializer
  attributes :lat, :long
  belongs_to :user
end
