require 'test_helper'

class EmpleadoEspecialidadsControllerTest < ActionController::TestCase
  setup do
    @empleado_especialidad = empleado_especialidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empleado_especialidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empleado_especialidad" do
    assert_difference('EmpleadoEspecialidad.count') do
      post :create, empleado_especialidad: { empleado_id: @empleado_especialidad.empleado_id, especialidad_id: @empleado_especialidad.especialidad_id }
    end

    assert_redirected_to empleado_especialidad_path(assigns(:empleado_especialidad))
  end

  test "should show empleado_especialidad" do
    get :show, id: @empleado_especialidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empleado_especialidad
    assert_response :success
  end

  test "should update empleado_especialidad" do
    patch :update, id: @empleado_especialidad, empleado_especialidad: { empleado_id: @empleado_especialidad.empleado_id, especialidad_id: @empleado_especialidad.especialidad_id }
    assert_redirected_to empleado_especialidad_path(assigns(:empleado_especialidad))
  end

  test "should destroy empleado_especialidad" do
    assert_difference('EmpleadoEspecialidad.count', -1) do
      delete :destroy, id: @empleado_especialidad
    end

    assert_redirected_to empleado_especialidads_path
  end
end
