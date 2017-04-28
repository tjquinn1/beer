require 'test_helper'

class BeerMainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beer_main = beer_mains(:one)
  end

  test "should get index" do
    get beer_mains_url
    assert_response :success
  end

  test "should get new" do
    get new_beer_main_url
    assert_response :success
  end

  test "should create beer_main" do
    assert_difference('BeerMain.count') do
      post beer_mains_url, params: { beer_main: { name: @beer_main.name } }
    end

    assert_redirected_to beer_main_url(BeerMain.last)
  end

  test "should show beer_main" do
    get beer_main_url(@beer_main)
    assert_response :success
  end

  test "should get edit" do
    get edit_beer_main_url(@beer_main)
    assert_response :success
  end

  test "should update beer_main" do
    patch beer_main_url(@beer_main), params: { beer_main: { name: @beer_main.name } }
    assert_redirected_to beer_main_url(@beer_main)
  end

  test "should destroy beer_main" do
    assert_difference('BeerMain.count', -1) do
      delete beer_main_url(@beer_main)
    end

    assert_redirected_to beer_mains_url
  end
end
