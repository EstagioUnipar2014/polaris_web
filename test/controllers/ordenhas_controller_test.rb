require 'test_helper'

class OrdenhasControllerTest < ActionController::TestCase
  setup do
    @ordenha = ordenhas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordenhas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordenha" do
    assert_difference('Ordenha.count') do
      post :create, ordenha: { animal_id: @ordenha.animal_id, data: @ordenha.data, periodo: @ordenha.periodo, quantidade: @ordenha.quantidade }
    end

    assert_redirected_to ordenha_path(assigns(:ordenha))
  end

  test "should show ordenha" do
    get :show, id: @ordenha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordenha
    assert_response :success
  end

  test "should update ordenha" do
    patch :update, id: @ordenha, ordenha: { animal_id: @ordenha.animal_id, data: @ordenha.data, periodo: @ordenha.periodo, quantidade: @ordenha.quantidade }
    assert_redirected_to ordenha_path(assigns(:ordenha))
  end

  test "should destroy ordenha" do
    assert_difference('Ordenha.count', -1) do
      delete :destroy, id: @ordenha
    end

    assert_redirected_to ordenhas_path
  end
end
