require 'test_helper'

class PropriedadesControllerTest < ActionController::TestCase
  setup do
    @propriedade = propriedades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:propriedades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propriedade" do
    assert_difference('Propriedade.count') do
      post :create, propriedade: { nome: @propriedade.nome }
    end

    assert_redirected_to propriedade_path(assigns(:propriedade))
  end

  test "should show propriedade" do
    get :show, id: @propriedade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propriedade
    assert_response :success
  end

  test "should update propriedade" do
    patch :update, id: @propriedade, propriedade: { nome: @propriedade.nome }
    assert_redirected_to propriedade_path(assigns(:propriedade))
  end

  test "should destroy propriedade" do
    assert_difference('Propriedade.count', -1) do
      delete :destroy, id: @propriedade
    end

    assert_redirected_to propriedades_path
  end
end
