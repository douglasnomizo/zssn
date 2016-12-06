require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:carol)
  end

  test "should have name" do
    @user.name = nil
    assert_not @user.save
  end

  test "should have gender" do
    @user.gender = nil
    assert_not @user.save
  end

  test "should have age greater than zero" do
    @user.age = 0
    assert_not @user.save
  end
end
