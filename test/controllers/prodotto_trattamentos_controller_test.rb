require 'test_helper'

class ProdottoTrattamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prodotto_trattamento = prodotto_trattamentos(:one)
  end

  test "should get index" do
    get prodotto_trattamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_prodotto_trattamento_url
    assert_response :success
  end

  test "should create prodotto_trattamento" do
    assert_difference('ProdottoTrattamento.count') do
      post prodotto_trattamentos_url, params: { prodotto_trattamento: { avvesit: @prodotto_trattamento.avvesit, dose_ha: @prodotto_trattamento.dose_ha, id_prodotto: @prodotto_trattamento.id_prodotto, id_trattamento: @prodotto_trattamento.id_trattamento } }
    end

    assert_redirected_to prodotto_trattamento_url(ProdottoTrattamento.last)
  end

  test "should show prodotto_trattamento" do
    get prodotto_trattamento_url(@prodotto_trattamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_prodotto_trattamento_url(@prodotto_trattamento)
    assert_response :success
  end

  test "should update prodotto_trattamento" do
    patch prodotto_trattamento_url(@prodotto_trattamento), params: { prodotto_trattamento: { avvesit: @prodotto_trattamento.avvesit, dose_ha: @prodotto_trattamento.dose_ha, id_prodotto: @prodotto_trattamento.id_prodotto, id_trattamento: @prodotto_trattamento.id_trattamento } }
    assert_redirected_to prodotto_trattamento_url(@prodotto_trattamento)
  end

  test "should destroy prodotto_trattamento" do
    assert_difference('ProdottoTrattamento.count', -1) do
      delete prodotto_trattamento_url(@prodotto_trattamento)
    end

    assert_redirected_to prodotto_trattamentos_url
  end
end
