require 'test_helper'

class PesagensControllerTest < ActionController::TestCase
  setup do
    @pesagem = pesagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pesagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pesagem" do
    assert_difference('Pesagem.count') do
      post :create, pesagem: { animal_id: @pesagem.animal_id, data_pesagem: @pesagem.data_pesagem, peso: @pesagem.peso }
    end

    assert_redirected_to pesagem_path(assigns(:pesagem))
  end

  test "should show pesagem" do
    get :show, id: @pesagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pesagem
    assert_response :success
  end

  test "should update pesagem" do
    patch :update, id: @pesagem, pesagem: { animal_id: @pesagem.animal_id, data_pesagem: @pesagem.data_pesagem, peso: @pesagem.peso }
    assert_redirected_to pesagem_path(assigns(:pesagem))
  end

  test "should destroy pesagem" do
    assert_difference('Pesagem.count', -1) do
      delete :destroy, id: @pesagem
    end

    assert_redirected_to pesagens_path
  end
end
