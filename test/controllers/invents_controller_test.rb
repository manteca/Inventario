require 'test_helper'

class InventsControllerTest < ActionController::TestCase
  setup do
    @invent = invents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invent" do
    assert_difference('Invent.count') do
      post :create, invent: { nota: @invent.nota, tipo: @invent.tipo }
    end

    assert_redirected_to invent_path(assigns(:invent))
  end

  test "should show invent" do
    get :show, id: @invent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invent
    assert_response :success
  end

  test "should update invent" do
    patch :update, id: @invent, invent: { nota: @invent.nota, tipo: @invent.tipo }
    assert_redirected_to invent_path(assigns(:invent))
  end

  test "should destroy invent" do
    assert_difference('Invent.count', -1) do
      delete :destroy, id: @invent
    end

    assert_redirected_to invents_path
  end
end
