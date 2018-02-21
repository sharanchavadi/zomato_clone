require 'test_helper'

class RestaurantCuisinsControllerTest < ActionController::TestCase
  setup do
    @restaurant_cuisin = restaurant_cuisins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_cuisins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_cuisin" do
    assert_difference('RestaurantCuisin.count') do
      post :create, restaurant_cuisin: { cuisine_id: @restaurant_cuisin.cuisine_id, restaurant_id: @restaurant_cuisin.restaurant_id }
    end

    assert_redirected_to restaurant_cuisin_path(assigns(:restaurant_cuisin))
  end

  test "should show restaurant_cuisin" do
    get :show, id: @restaurant_cuisin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_cuisin
    assert_response :success
  end

  test "should update restaurant_cuisin" do
    patch :update, id: @restaurant_cuisin, restaurant_cuisin: { cuisine_id: @restaurant_cuisin.cuisine_id, restaurant_id: @restaurant_cuisin.restaurant_id }
    assert_redirected_to restaurant_cuisin_path(assigns(:restaurant_cuisin))
  end

  test "should destroy restaurant_cuisin" do
    assert_difference('RestaurantCuisin.count', -1) do
      delete :destroy, id: @restaurant_cuisin
    end

    assert_redirected_to restaurant_cuisins_path
  end
end
