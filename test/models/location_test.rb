require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  setup do
    @location = locations(:sao_paulo)
  end


  test "should have latitude"  do
    @location.lat = nil
    assert_not @location.save
  end

  test "should have longitude"  do
    @location.long = nil
    assert_not @location.save
  end

end
