require 'test_helper'

class DietaControllerTest < ActionController::TestCase
  setup do
    @dietum = dieta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dieta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dietum" do
    assert_difference('Dietum.count') do
      post :create, dietum: { descricao: @dietum.descricao }
    end

    assert_redirected_to dietum_path(assigns(:dietum))
  end

  test "should show dietum" do
    get :show, id: @dietum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dietum
    assert_response :success
  end

  test "should update dietum" do
    patch :update, id: @dietum, dietum: { descricao: @dietum.descricao }
    assert_redirected_to dietum_path(assigns(:dietum))
  end

  test "should destroy dietum" do
    assert_difference('Dietum.count', -1) do
      delete :destroy, id: @dietum
    end

    assert_redirected_to dieta_path
  end
end
