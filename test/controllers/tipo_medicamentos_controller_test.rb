require 'test_helper'

class TipoMedicamentosControllerTest < ActionController::TestCase
  setup do
    @tipo_medicamento = tipo_medicamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_medicamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_medicamento" do
    assert_difference('TipoMedicamento.count') do
      post :create, tipo_medicamento: { descricao: @tipo_medicamento.descricao }
    end

    assert_redirected_to tipo_medicamento_path(assigns(:tipo_medicamento))
  end

  test "should show tipo_medicamento" do
    get :show, id: @tipo_medicamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_medicamento
    assert_response :success
  end

  test "should update tipo_medicamento" do
    patch :update, id: @tipo_medicamento, tipo_medicamento: { descricao: @tipo_medicamento.descricao }
    assert_redirected_to tipo_medicamento_path(assigns(:tipo_medicamento))
  end

  test "should destroy tipo_medicamento" do
    assert_difference('TipoMedicamento.count', -1) do
      delete :destroy, id: @tipo_medicamento
    end

    assert_redirected_to tipo_medicamentos_path
  end
end
