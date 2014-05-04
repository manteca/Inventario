require 'test_helper'

class BodegasControllerTest < ActionController::TestCase
  setup do
    @bodega = bodegas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bodegas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bodega" do
    assert_difference('Bodega.count') do
      post :create, bodega: { nombre: @bodega.nombre }
    end

    assert_redirected_to bodega_path(assigns(:bodega))
  end

  test "should show bodega" do
    get :show, id: @bodega
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bodega
    assert_response :success
  end

  test "should update bodega" do
    patch :update, id: @bodega, bodega: { nombre: @bodega.nombre }
    assert_redirected_to bodega_path(assigns(:bodega))
  end

  test "should destroy bodega" do
    assert_difference('Bodega.count', -1) do
      delete :destroy, id: @bodega
    end

    assert_redirected_to bodegas_path
  end
end
