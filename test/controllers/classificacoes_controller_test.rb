require 'test_helper'

class ClassificacoesControllerTest < ActionController::TestCase
  setup do
    @classificacao = classificacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classificacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classificacao" do
    assert_difference('Classificacao.count') do
      post :create, classificacao: { descricao: @classificacao.descricao }
    end

    assert_redirected_to classificacao_path(assigns(:classificacao))
  end

  test "should show classificacao" do
    get :show, id: @classificacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classificacao
    assert_response :success
  end

  test "should update classificacao" do
    patch :update, id: @classificacao, classificacao: { descricao: @classificacao.descricao }
    assert_redirected_to classificacao_path(assigns(:classificacao))
  end

  test "should destroy classificacao" do
    assert_difference('Classificacao.count', -1) do
      delete :destroy, id: @classificacao
    end

    assert_redirected_to classificacoes_path
  end
end
