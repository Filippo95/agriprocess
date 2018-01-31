require 'test_helper'

class ProdottosOperazionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prodottos_operazione = prodottos_operaziones(:one)
  end

  test "should get index" do
    get prodottos_operaziones_url
    assert_response :success
  end

  test "should get new" do
    get new_prodottos_operazione_url
    assert_response :success
  end

  test "should create prodottos_operazione" do
    assert_difference('ProdottosOperazione.count') do
      post prodottos_operaziones_url, params: { prodottos_operazione: { id_operaziones: @prodottos_operazione.id_operaziones, id_prodotto: @prodottos_operazione.id_prodotto } }
    end

    assert_redirected_to prodottos_operazione_url(ProdottosOperazione.last)
  end

  test "should show prodottos_operazione" do
    get prodottos_operazione_url(@prodottos_operazione)
    assert_response :success
  end

  test "should get edit" do
    get edit_prodottos_operazione_url(@prodottos_operazione)
    assert_response :success
  end

  test "should update prodottos_operazione" do
    patch prodottos_operazione_url(@prodottos_operazione), params: { prodottos_operazione: { id_operaziones: @prodottos_operazione.id_operaziones, id_prodotto: @prodottos_operazione.id_prodotto } }
    assert_redirected_to prodottos_operazione_url(@prodottos_operazione)
  end

  test "should destroy prodottos_operazione" do
    assert_difference('ProdottosOperazione.count', -1) do
      delete prodottos_operazione_url(@prodottos_operazione)
    end

    assert_redirected_to prodottos_operaziones_url
  end
end
