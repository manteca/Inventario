require 'test_helper'

class UmedidasControllerTest < ActionController::TestCase
  setup do
    @umedida = umedidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:umedidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create umedida" do
    assert_difference('Umedida.count') do
      post :create, umedida: { nombre: @umedida.nombre }
    end

    assert_redirected_to umedida_path(assigns(:umedida))
  end

  test "should show umedida" do
    get :show, id: @umedida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @umedida
    assert_response :success
  end

  test "should update umedida" do
    patch :update, id: @umedida, umedida: { nombre: @umedida.nombre }
    assert_redirected_to umedida_path(assigns(:umedida))
  end

  test "should destroy umedida" do
    assert_difference('Umedida.count', -1) do
      delete :destroy, id: @umedida
    end

    assert_redirected_to umedidas_path
  end
end
