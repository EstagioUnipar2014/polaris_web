require 'test_helper'

class ExamesControllerTest < ActionController::TestCase
  setup do
    @exame = exames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exame" do
    assert_difference('Exame.count') do
      post :create, exame: { animal_id: @exame.animal_id, data: @exame.data, descricao: @exame.descricao, efetuado: @exame.efetuado, informacoes: @exame.informacoes, resultado: @exame.resultado, tipo_exame_id: @exame.tipo_exame_id }
    end

    assert_redirected_to exame_path(assigns(:exame))
  end

  test "should show exame" do
    get :show, id: @exame
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exame
    assert_response :success
  end

  test "should update exame" do
    patch :update, id: @exame, exame: { animal_id: @exame.animal_id, data: @exame.data, descricao: @exame.descricao, efetuado: @exame.efetuado, informacoes: @exame.informacoes, resultado: @exame.resultado, tipo_exame_id: @exame.tipo_exame_id }
    assert_redirected_to exame_path(assigns(:exame))
  end

  test "should destroy exame" do
    assert_difference('Exame.count', -1) do
      delete :destroy, id: @exame
    end

    assert_redirected_to exames_path
  end
end
