require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  setup do
    @inventory = inventories(:carol_water)
  end

  test "should have quantity"  do
    @inventory.quantity = nil
    assert_not @inventory.save
  end

  test "quantity should not be negative"  do
    @inventory.quantity = -1
    assert_not @inventory.save
  end
end
