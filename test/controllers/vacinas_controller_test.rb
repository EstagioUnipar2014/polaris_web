require 'test_helper'

class VacinasControllerTest < ActionController::TestCase
  setup do
    @vacina = vacinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vacinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vacina" do
    assert_difference('Vacina.count') do
      post :create, vacina: { animal_id: @vacina.animal_id, data_vacina: @vacina.data_vacina, dosagem: @vacina.dosagem, efetuada: @vacina.efetuada, tipo_vacina_id: @vacina.tipo_vacina_id }
    end

    assert_redirected_to vacina_path(assigns(:vacina))
  end

  test "should show vacina" do
    get :show, id: @vacina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vacina
    assert_response :success
  end

  test "should update vacina" do
    patch :update, id: @vacina, vacina: { animal_id: @vacina.animal_id, data_vacina: @vacina.data_vacina, dosagem: @vacina.dosagem, efetuada: @vacina.efetuada, tipo_vacina_id: @vacina.tipo_vacina_id }
    assert_redirected_to vacina_path(assigns(:vacina))
  end

  test "should destroy vacina" do
    assert_difference('Vacina.count', -1) do
      delete :destroy, id: @vacina
    end

    assert_redirected_to vacinas_path
  end
end
