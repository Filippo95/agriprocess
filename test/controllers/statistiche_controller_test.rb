require 'test_helper'

class StatisticheControllerTest < ActionDispatch::IntegrationTest
  test "should get costo_per_cat_coltura" do
    get statistiche_costo_per_cat_coltura_url
    assert_response :success
  end

  test "should get costo_per_coltura" do
    get statistiche_costo_per_coltura_url
    assert_response :success
  end

  test "should get costo_per_operazione" do
    get statistiche_costo_per_operazione_url
    assert_response :success
  end

  test "should get costo_carburante_per_cat_coltura" do
    get statistiche_costo_carburante_per_cat_coltura_url
    assert_response :success
  end

  test "should get costo_carburante_per_coltura" do
    get statistiche_costo_carburante_per_coltura_url
    assert_response :success
  end

  test "should get costo_carburante_per_operazione" do
    get statistiche_costo_carburante_per_operazione_url
    assert_response :success
  end

  test "should get costo_carburante_per_attrezzo" do
    get statistiche_costo_carburante_per_attrezzo_url
    assert_response :success
  end

end
