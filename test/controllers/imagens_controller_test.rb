require 'test_helper'

class ImagensControllerTest < ActionController::TestCase
  setup do
    @imagem = imagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagem" do
    assert_difference('Imagem.count') do
      post :create, imagem: { animal_id: @imagem.animal_id, url: @imagem.url }
    end

    assert_redirected_to imagem_path(assigns(:imagem))
  end

  test "should show imagem" do
    get :show, id: @imagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagem
    assert_response :success
  end

  test "should update imagem" do
    patch :update, id: @imagem, imagem: { animal_id: @imagem.animal_id, url: @imagem.url }
    assert_redirected_to imagem_path(assigns(:imagem))
  end

  test "should destroy imagem" do
    assert_difference('Imagem.count', -1) do
      delete :destroy, id: @imagem
    end

    assert_redirected_to imagens_path
  end
end
