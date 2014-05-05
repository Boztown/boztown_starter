require 'test_helper'

class ExampletsControllerTest < ActionController::TestCase
  setup do
    @examplet = examplets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:examplets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create examplet" do
    assert_difference('Examplet.count') do
      post :create, examplet: { name: @examplet.name, type: @examplet.type }
    end

    assert_redirected_to examplet_path(assigns(:examplet))
  end

  test "should show examplet" do
    get :show, id: @examplet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @examplet
    assert_response :success
  end

  test "should update examplet" do
    patch :update, id: @examplet, examplet: { name: @examplet.name, type: @examplet.type }
    assert_redirected_to examplet_path(assigns(:examplet))
  end

  test "should destroy examplet" do
    assert_difference('Examplet.count', -1) do
      delete :destroy, id: @examplet
    end

    assert_redirected_to examplets_path
  end
end
