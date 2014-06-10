require 'test_helper'

class TipoExamesControllerTest < ActionController::TestCase
  setup do
    @tipo_exame = tipo_exames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_exames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_exame" do
    assert_difference('TipoExame.count') do
      post :create, tipo_exame: { descricao: @tipo_exame.descricao }
    end

    assert_redirected_to tipo_exame_path(assigns(:tipo_exame))
  end

  test "should show tipo_exame" do
    get :show, id: @tipo_exame
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_exame
    assert_response :success
  end

  test "should update tipo_exame" do
    patch :update, id: @tipo_exame, tipo_exame: { descricao: @tipo_exame.descricao }
    assert_redirected_to tipo_exame_path(assigns(:tipo_exame))
  end

  test "should destroy tipo_exame" do
    assert_difference('TipoExame.count', -1) do
      delete :destroy, id: @tipo_exame
    end

    assert_redirected_to tipo_exames_path
  end
end
