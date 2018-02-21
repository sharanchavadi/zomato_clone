require 'test_helper'

class CuisinsControllerTest < ActionController::TestCase
  setup do
    @cuisin = cuisins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cuisins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cuisin" do
    assert_difference('Cuisin.count') do
      post :create, cuisin: { name: @cuisin.name }
    end

    assert_redirected_to cuisin_path(assigns(:cuisin))
  end

  test "should show cuisin" do
    get :show, id: @cuisin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cuisin
    assert_response :success
  end

  test "should update cuisin" do
    patch :update, id: @cuisin, cuisin: { name: @cuisin.name }
    assert_redirected_to cuisin_path(assigns(:cuisin))
  end

  test "should destroy cuisin" do
    assert_difference('Cuisin.count', -1) do
      delete :destroy, id: @cuisin
    end

    assert_redirected_to cuisins_path
  end
end
