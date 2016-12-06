require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
  should validate_presence_of(:points)
  should validate_numericality_of(:points).is_greater_than(0)
end
