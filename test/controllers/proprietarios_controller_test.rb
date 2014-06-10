require 'test_helper'

class ProprietariosControllerTest < ActionController::TestCase
  setup do
    @proprietario = proprietarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proprietarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proprietario" do
    assert_difference('Proprietario.count') do
      post :create, proprietario: { cpf: @proprietario.cpf, data_nascimento: @proprietario.data_nascimento, nome: @proprietario.nome }
    end

    assert_redirected_to proprietario_path(assigns(:proprietario))
  end

  test "should show proprietario" do
    get :show, id: @proprietario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proprietario
    assert_response :success
  end

  test "should update proprietario" do
    patch :update, id: @proprietario, proprietario: { cpf: @proprietario.cpf, data_nascimento: @proprietario.data_nascimento, nome: @proprietario.nome }
    assert_redirected_to proprietario_path(assigns(:proprietario))
  end

  test "should destroy proprietario" do
    assert_difference('Proprietario.count', -1) do
      delete :destroy, id: @proprietario
    end

    assert_redirected_to proprietarios_path
  end
end
