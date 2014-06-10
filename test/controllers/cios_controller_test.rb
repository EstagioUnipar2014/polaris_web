require 'test_helper'

class CiosControllerTest < ActionController::TestCase
  setup do
    @cio = cios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cio" do
    assert_difference('Cio.count') do
      post :create, cio: { animal_id: @cio.animal_id, data_cio: @cio.data_cio, previsao_proximo: @cio.previsao_proximo }
    end

    assert_redirected_to cio_path(assigns(:cio))
  end

  test "should show cio" do
    get :show, id: @cio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cio
    assert_response :success
  end

  test "should update cio" do
    patch :update, id: @cio, cio: { animal_id: @cio.animal_id, data_cio: @cio.data_cio, previsao_proximo: @cio.previsao_proximo }
    assert_redirected_to cio_path(assigns(:cio))
  end

  test "should destroy cio" do
    assert_difference('Cio.count', -1) do
      delete :destroy, id: @cio
    end

    assert_redirected_to cios_path
  end
end
