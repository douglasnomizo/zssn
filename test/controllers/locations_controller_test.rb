require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location = locations(:porto_alegre)
    @user = users(:bruna)
  end

  test "should get index" do
    get locations_url, as: :json
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post locations_url, params: {
        location: {
          lat: Faker::Number.decimal(1, 7),
          long: Faker::Number.decimal(1, 7),
          user_id: @user.id
        }
      }, as: :json
    end

    assert_response 201
  end

  test "should show location" do
    get location_url(@location), as: :json
    assert_response :success
  end

  test "should update location" do
    patch location_url(@location), params: { location: { lat: @location.lat, long: @location.long, user_id: @location.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete location_url(@location), as: :json
    end

    assert_response 204
  end
end
