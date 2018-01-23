require 'test_helper'

class OperazionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operazione = operaziones(:one)
  end

  test "should get index" do
    get operaziones_url
    assert_response :success
  end

  test "should get new" do
    get new_operazione_url
    assert_response :success
  end

  test "should create operazione" do
    assert_difference('Operazione.count') do
      post operaziones_url, params: { operazione: { descrizione: @operazione.descrizione, nome: @operazione.nome, per_ha: @operazione.per_ha } }
    end

    assert_redirected_to operazione_url(Operazione.last)
  end

  test "should show operazione" do
    get operazione_url(@operazione)
    assert_response :success
  end

  test "should get edit" do
    get edit_operazione_url(@operazione)
    assert_response :success
  end

  test "should update operazione" do
    patch operazione_url(@operazione), params: { operazione: { descrizione: @operazione.descrizione, nome: @operazione.nome, per_ha: @operazione.per_ha } }
    assert_redirected_to operazione_url(@operazione)
  end

  test "should destroy operazione" do
    assert_difference('Operazione.count', -1) do
      delete operazione_url(@operazione)
    end

    assert_redirected_to operaziones_url
  end
end
