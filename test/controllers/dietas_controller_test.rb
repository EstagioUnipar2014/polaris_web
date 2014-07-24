require 'test_helper'

class DietasControllerTest < ActionController::TestCase
  setup do
    @dieta = dietas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dietas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dieta" do
    assert_difference('Dieta.count') do
      post :create, dieta: { descricao: @dieta.descricao }
    end

    assert_redirected_to dieta_path(assigns(:dieta))
  end

  test "should show dieta" do
    get :show, id: @dieta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dieta
    assert_response :success
  end

  test "should update dieta" do
    patch :update, id: @dieta, dieta: { descricao: @dieta.descricao }
    assert_redirected_to dieta_path(assigns(:dieta))
  end

  test "should destroy dieta" do
    assert_difference('Dieta.count', -1) do
      delete :destroy, id: @dieta
    end

    assert_redirected_to dietas_path
  end
end
