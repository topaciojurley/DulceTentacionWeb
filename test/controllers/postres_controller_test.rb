require 'test_helper'

class PostresControllerTest < ActionController::TestCase
  setup do
    @postre = postres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postre" do
    assert_difference('Postre.count') do
      post :create, postre: { nombre: @postre.nombre, porcion: @postre.porcion, precio: @postre.precio, tipopostre_id: @postre.tipopostre_id }
    end

    assert_redirected_to postre_path(assigns(:postre))
  end

  test "should show postre" do
    get :show, id: @postre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postre
    assert_response :success
  end

  test "should update postre" do
    patch :update, id: @postre, postre: { nombre: @postre.nombre, porcion: @postre.porcion, precio: @postre.precio, tipopostre_id: @postre.tipopostre_id }
    assert_redirected_to postre_path(assigns(:postre))
  end

  test "should destroy postre" do
    assert_difference('Postre.count', -1) do
      delete :destroy, id: @postre
    end

    assert_redirected_to postres_path
  end
end
