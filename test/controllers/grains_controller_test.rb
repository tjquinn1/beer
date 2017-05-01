require 'test_helper'

class GrainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grain = grains(:one)
  end

  test "should get index" do
    get grains_url
    assert_response :success
  end

  test "should get new" do
    get new_grain_url
    assert_response :success
  end

  test "should create grain" do
    assert_difference('Grain.count') do
      post grains_url, params: { grain: { amountGrain: @grain.amountGrain, costGrain: @grain.costGrain, manufName: @grain.manufName, name: @grain.name, origin: @grain.origin } }
    end

    assert_redirected_to grain_url(Grain.last)
  end

  test "should show grain" do
    get grain_url(@grain)
    assert_response :success
  end

  test "should get edit" do
    get edit_grain_url(@grain)
    assert_response :success
  end

  test "should update grain" do
    patch grain_url(@grain), params: { grain: { amountGrain: @grain.amountGrain, costGrain: @grain.costGrain, manufName: @grain.manufName, name: @grain.name, origin: @grain.origin } }
    assert_redirected_to grain_url(@grain)
  end

  test "should destroy grain" do
    assert_difference('Grain.count', -1) do
      delete grain_url(@grain)
    end

    assert_redirected_to grains_url
  end
end
