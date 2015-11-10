require 'test_helper'

class TipopostresControllerTest < ActionController::TestCase
  setup do
    @tipopostre = tipopostres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipopostres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipopostre" do
    assert_difference('Tipopostre.count') do
      post :create, tipopostre: { descripcion: @tipopostre.descripcion, nombre: @tipopostre.nombre }
    end

    assert_redirected_to tipopostre_path(assigns(:tipopostre))
  end

  test "should show tipopostre" do
    get :show, id: @tipopostre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipopostre
    assert_response :success
  end

  test "should update tipopostre" do
    patch :update, id: @tipopostre, tipopostre: { descripcion: @tipopostre.descripcion, nombre: @tipopostre.nombre }
    assert_redirected_to tipopostre_path(assigns(:tipopostre))
  end

  test "should destroy tipopostre" do
    assert_difference('Tipopostre.count', -1) do
      delete :destroy, id: @tipopostre
    end

    assert_redirected_to tipopostres_path
  end
end
