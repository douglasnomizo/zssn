require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  setup do
    @item = items(:water)
  end

  test "item should save correctly" do
    @item = Item.new name: "Food", points: 2
    assert @item.save
  end

  test "item should have name" do
    @item.name = nil
    assert_not @item.save
  end

  test "item should have positive points" do
    @item.points = -1
    assert_not @item.save
  end

end
