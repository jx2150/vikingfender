require 'test_helper'

class FendersControllerTest < ActionController::TestCase
  setup do
    @fender = fenders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fenders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fender" do
    assert_difference('Fender.count') do
      post :create, :fender => @fender.attributes
    end

    assert_redirected_to fender_path(assigns(:fender))
  end

  test "should show fender" do
    get :show, :id => @fender.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fender.to_param
    assert_response :success
  end

  test "should update fender" do
    put :update, :id => @fender.to_param, :fender => @fender.attributes
    assert_redirected_to fender_path(assigns(:fender))
  end

  test "should destroy fender" do
    assert_difference('Fender.count', -1) do
      delete :destroy, :id => @fender.to_param
    end

    assert_redirected_to fenders_path
  end
end
