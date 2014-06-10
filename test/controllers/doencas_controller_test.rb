require 'test_helper'

class DoencasControllerTest < ActionController::TestCase
  setup do
    @doenca = doencas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doencas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doenca" do
    assert_difference('Doenca.count') do
      post :create, doenca: { descricao: @doenca.descricao, nome: @doenca.nome }
    end

    assert_redirected_to doenca_path(assigns(:doenca))
  end

  test "should show doenca" do
    get :show, id: @doenca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doenca
    assert_response :success
  end

  test "should update doenca" do
    patch :update, id: @doenca, doenca: { descricao: @doenca.descricao, nome: @doenca.nome }
    assert_redirected_to doenca_path(assigns(:doenca))
  end

  test "should destroy doenca" do
    assert_difference('Doenca.count', -1) do
      delete :destroy, id: @doenca
    end

    assert_redirected_to doencas_path
  end
end
