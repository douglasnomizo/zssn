require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  should validate_presence_of(:lat)
  should validate_presence_of(:long)
  should validate_uniqueness_of(:user)
  should belong_to(:user)
end
