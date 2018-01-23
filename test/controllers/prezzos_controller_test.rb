require 'test_helper'

class PrezzosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prezzo = prezzos(:one)
  end

  test "should get index" do
    get prezzos_url
    assert_response :success
  end

  test "should get new" do
    get new_prezzo_url
    assert_response :success
  end

  test "should create prezzo" do
    assert_difference('Prezzo.count') do
      post prezzos_url, params: { prezzo: { data: @prezzo.data, id_prodotto: @prezzo.id_prodotto, prezzo_fattura: @prezzo.prezzo_fattura, sconto: @prezzo.sconto } }
    end

    assert_redirected_to prezzo_url(Prezzo.last)
  end

  test "should show prezzo" do
    get prezzo_url(@prezzo)
    assert_response :success
  end

  test "should get edit" do
    get edit_prezzo_url(@prezzo)
    assert_response :success
  end

  test "should update prezzo" do
    patch prezzo_url(@prezzo), params: { prezzo: { data: @prezzo.data, id_prodotto: @prezzo.id_prodotto, prezzo_fattura: @prezzo.prezzo_fattura, sconto: @prezzo.sconto } }
    assert_redirected_to prezzo_url(@prezzo)
  end

  test "should destroy prezzo" do
    assert_difference('Prezzo.count', -1) do
      delete prezzo_url(@prezzo)
    end

    assert_redirected_to prezzos_url
  end
end
