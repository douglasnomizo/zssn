require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
  should validate_uniqueness_of(:name)
  should validate_presence_of(:gender)
  should validate_numericality_of(:age).is_greater_than(0)
  should have_many(:inventory)
  should have_many(:items)
  should have_one(:location)
end
