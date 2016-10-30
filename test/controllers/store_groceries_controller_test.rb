require 'test_helper'

class StoreGroceriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_grocery = store_groceries(:one)
  end

  test "should get index" do
    get store_groceries_url
    assert_response :success
  end

  test "should get new" do
    get new_store_grocery_url
    assert_response :success
  end

  test "should create store_grocery" do
    assert_difference('StoreGrocery.count') do
      post store_groceries_url, params: { store_grocery: { grocery_id: @store_grocery.grocery_id, isle_id: @store_grocery.isle_id, store_id: @store_grocery.store_id } }
    end

    assert_redirected_to store_grocery_url(StoreGrocery.last)
  end

  test "should show store_grocery" do
    get store_grocery_url(@store_grocery)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_grocery_url(@store_grocery)
    assert_response :success
  end

  test "should update store_grocery" do
    patch store_grocery_url(@store_grocery), params: { store_grocery: { grocery_id: @store_grocery.grocery_id, isle_id: @store_grocery.isle_id, store_id: @store_grocery.store_id } }
    assert_redirected_to store_grocery_url(@store_grocery)
  end

  test "should destroy store_grocery" do
    assert_difference('StoreGrocery.count', -1) do
      delete store_grocery_url(@store_grocery)
    end

    assert_redirected_to store_groceries_url
  end
end
