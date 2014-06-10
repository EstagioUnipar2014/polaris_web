require 'test_helper'

class TipoVacinasControllerTest < ActionController::TestCase
  setup do
    @tipo_vacina = tipo_vacinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_vacinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_vacina" do
    assert_difference('TipoVacina.count') do
      post :create, tipo_vacina: { descricao: @tipo_vacina.descricao }
    end

    assert_redirected_to tipo_vacina_path(assigns(:tipo_vacina))
  end

  test "should show tipo_vacina" do
    get :show, id: @tipo_vacina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_vacina
    assert_response :success
  end

  test "should update tipo_vacina" do
    patch :update, id: @tipo_vacina, tipo_vacina: { descricao: @tipo_vacina.descricao }
    assert_redirected_to tipo_vacina_path(assigns(:tipo_vacina))
  end

  test "should destroy tipo_vacina" do
    assert_difference('TipoVacina.count', -1) do
      delete :destroy, id: @tipo_vacina
    end

    assert_redirected_to tipo_vacinas_path
  end
end
