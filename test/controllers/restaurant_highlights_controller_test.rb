require 'test_helper'

class RestaurantHighlightsControllerTest < ActionController::TestCase
  setup do
    @restaurant_highlight = restaurant_highlights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_highlights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_highlight" do
    assert_difference('RestaurantHighlight.count') do
      post :create, restaurant_highlight: { highlight_id: @restaurant_highlight.highlight_id, restaurant_id: @restaurant_highlight.restaurant_id }
    end

    assert_redirected_to restaurant_highlight_path(assigns(:restaurant_highlight))
  end

  test "should show restaurant_highlight" do
    get :show, id: @restaurant_highlight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_highlight
    assert_response :success
  end

  test "should update restaurant_highlight" do
    patch :update, id: @restaurant_highlight, restaurant_highlight: { highlight_id: @restaurant_highlight.highlight_id, restaurant_id: @restaurant_highlight.restaurant_id }
    assert_redirected_to restaurant_highlight_path(assigns(:restaurant_highlight))
  end

  test "should destroy restaurant_highlight" do
    assert_difference('RestaurantHighlight.count', -1) do
      delete :destroy, id: @restaurant_highlight
    end

    assert_redirected_to restaurant_highlights_path
  end
end
