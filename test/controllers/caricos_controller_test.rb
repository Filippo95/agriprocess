require 'test_helper'

class CaricosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carico = caricos(:one)
  end

  test "should get index" do
    get caricos_url
    assert_response :success
  end

  test "should get new" do
    get new_carico_url
    assert_response :success
  end

  test "should create carico" do
    assert_difference('Carico.count') do
      post caricos_url, params: { carico: { id_prodotto: @carico.id_prodotto, quantit: @carico.quantit } }
    end

    assert_redirected_to carico_url(Carico.last)
  end

  test "should show carico" do
    get carico_url(@carico)
    assert_response :success
  end

  test "should get edit" do
    get edit_carico_url(@carico)
    assert_response :success
  end

  test "should update carico" do
    patch carico_url(@carico), params: { carico: { id_prodotto: @carico.id_prodotto, quantit: @carico.quantit } }
    assert_redirected_to carico_url(@carico)
  end

  test "should destroy carico" do
    assert_difference('Carico.count', -1) do
      delete carico_url(@carico)
    end

    assert_redirected_to caricos_url
  end
end
