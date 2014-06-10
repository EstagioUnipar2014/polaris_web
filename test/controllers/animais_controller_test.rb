require 'test_helper'

class AnimaisControllerTest < ActionController::TestCase
  setup do
    @animal = animais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post :create, animal: { ativo: @animal.ativo, data_nascimento: @animal.data_nascimento, identificacao: @animal.identificacao, informacoes: @animal.informacoes, lactacao: @animal.lactacao, nascido_na_propriedade: @animal.nascido_na_propriedade, nome: @animal.nome, sexo: @animal.sexo }
    end

    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should show animal" do
    get :show, id: @animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @animal
    assert_response :success
  end

  test "should update animal" do
    patch :update, id: @animal, animal: { ativo: @animal.ativo, data_nascimento: @animal.data_nascimento, identificacao: @animal.identificacao, informacoes: @animal.informacoes, lactacao: @animal.lactacao, nascido_na_propriedade: @animal.nascido_na_propriedade, nome: @animal.nome, sexo: @animal.sexo }
    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete :destroy, id: @animal
    end

    assert_redirected_to animais_path
  end
end
