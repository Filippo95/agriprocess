require 'test_helper'

class AttrezzosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attrezzo = attrezzos(:one)
  end

  test "should get index" do
    get attrezzos_url
    assert_response :success
  end

  test "should get new" do
    get new_attrezzo_url
    assert_response :success
  end

  test "should create attrezzo" do
    assert_difference('Attrezzo.count') do
      post attrezzos_url, params: { attrezzo: { costo_carburante: @attrezzo.costo_carburante, deperimento: @attrezzo.deperimento, descrizione: @attrezzo.descrizione, nome: @attrezzo.nome } }
    end

    assert_redirected_to attrezzo_url(Attrezzo.last)
  end

  test "should show attrezzo" do
    get attrezzo_url(@attrezzo)
    assert_response :success
  end

  test "should get edit" do
    get edit_attrezzo_url(@attrezzo)
    assert_response :success
  end

  test "should update attrezzo" do
    patch attrezzo_url(@attrezzo), params: { attrezzo: { costo_carburante: @attrezzo.costo_carburante, deperimento: @attrezzo.deperimento, descrizione: @attrezzo.descrizione, nome: @attrezzo.nome } }
    assert_redirected_to attrezzo_url(@attrezzo)
  end

  test "should destroy attrezzo" do
    assert_difference('Attrezzo.count', -1) do
      delete attrezzo_url(@attrezzo)
    end

    assert_redirected_to attrezzos_url
  end
end
