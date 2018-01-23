require 'test_helper'

class ColturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coltura = colturas(:one)
  end

  test "should get index" do
    get colturas_url
    assert_response :success
  end

  test "should get new" do
    get new_coltura_url
    assert_response :success
  end

  test "should create coltura" do
    assert_difference('Coltura.count') do
      post colturas_url, params: { coltura: { estensione_ha: @coltura.estensione_ha, id_cat: @coltura.id_cat, nome: @coltura.nome } }
    end

    assert_redirected_to coltura_url(Coltura.last)
  end

  test "should show coltura" do
    get coltura_url(@coltura)
    assert_response :success
  end

  test "should get edit" do
    get edit_coltura_url(@coltura)
    assert_response :success
  end

  test "should update coltura" do
    patch coltura_url(@coltura), params: { coltura: { estensione_ha: @coltura.estensione_ha, id_cat: @coltura.id_cat, nome: @coltura.nome } }
    assert_redirected_to coltura_url(@coltura)
  end

  test "should destroy coltura" do
    assert_difference('Coltura.count', -1) do
      delete coltura_url(@coltura)
    end

    assert_redirected_to colturas_url
  end
end
