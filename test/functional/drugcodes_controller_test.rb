require 'test_helper'

class DrugcodesControllerTest < ActionController::TestCase
  setup do
    @drugcode = drugcodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drugcodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drugcode" do
    assert_difference('Drugcode.count') do
      post :create, :drugcode => @drugcode.attributes
    end

    assert_redirected_to drugcode_path(assigns(:drugcode))
  end

  test "should show drugcode" do
    get :show, :id => @drugcode.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @drugcode.to_param
    assert_response :success
  end

  test "should update drugcode" do
    put :update, :id => @drugcode.to_param, :drugcode => @drugcode.attributes
    assert_redirected_to drugcode_path(assigns(:drugcode))
  end

  test "should destroy drugcode" do
    assert_difference('Drugcode.count', -1) do
      delete :destroy, :id => @drugcode.to_param
    end

    assert_redirected_to drugcodes_path
  end
end
