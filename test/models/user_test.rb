require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:carol)
  end

  test "user should have name" do
    @user.name = nil
    assert_not @user.save
  end

  test "user should have gender" do
    @user.gender = nil
    assert_not @user.save
  end

  test "age should be greater than zero" do
    @user.age = 0
    assert_not @user.save
  end
end
