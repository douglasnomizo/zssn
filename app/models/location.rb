class Location < ApplicationRecord
  validates :lat, presence: true
  validates :long, presence: true
  validates :user, uniqueness: true
  belongs_to :user
end
