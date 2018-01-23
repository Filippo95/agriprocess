require 'test_helper'

class CatProdottosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat_prodotto = cat_prodottos(:one)
  end

  test "should get index" do
    get cat_prodottos_url
    assert_response :success
  end

  test "should get new" do
    get new_cat_prodotto_url
    assert_response :success
  end

  test "should create cat_prodotto" do
    assert_difference('CatProdotto.count') do
      post cat_prodottos_url, params: { cat_prodotto: { descrizione: @cat_prodotto.descrizione, id_prarent: @cat_prodotto.id_prarent, nome: @cat_prodotto.nome } }
    end

    assert_redirected_to cat_prodotto_url(CatProdotto.last)
  end

  test "should show cat_prodotto" do
    get cat_prodotto_url(@cat_prodotto)
    assert_response :success
  end

  test "should get edit" do
    get edit_cat_prodotto_url(@cat_prodotto)
    assert_response :success
  end

  test "should update cat_prodotto" do
    patch cat_prodotto_url(@cat_prodotto), params: { cat_prodotto: { descrizione: @cat_prodotto.descrizione, id_prarent: @cat_prodotto.id_prarent, nome: @cat_prodotto.nome } }
    assert_redirected_to cat_prodotto_url(@cat_prodotto)
  end

  test "should destroy cat_prodotto" do
    assert_difference('CatProdotto.count', -1) do
      delete cat_prodotto_url(@cat_prodotto)
    end

    assert_redirected_to cat_prodottos_url
  end
end
