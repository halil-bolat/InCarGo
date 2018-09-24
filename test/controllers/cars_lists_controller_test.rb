require 'test_helper'

class CarsListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cars_list = cars_lists(:one)
  end

  test "should get index" do
    get cars_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_cars_list_url
    assert_response :success
  end

  test "should create cars_list" do
    assert_difference('CarsList.count') do
      post cars_lists_url, params: { cars_list: {  } }
    end

    assert_redirected_to cars_list_url(CarsList.last)
  end

  test "should show cars_list" do
    get cars_list_url(@cars_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_cars_list_url(@cars_list)
    assert_response :success
  end

  test "should update cars_list" do
    patch cars_list_url(@cars_list), params: { cars_list: {  } }
    assert_redirected_to cars_list_url(@cars_list)
  end

  test "should destroy cars_list" do
    assert_difference('CarsList.count', -1) do
      delete cars_list_url(@cars_list)
    end

    assert_redirected_to cars_lists_url
  end
end
