require 'test_helper'

class OperazioneTrattamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operazione_trattamento = operazione_trattamentos(:one)
  end

  test "should get index" do
    get operazione_trattamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_operazione_trattamento_url
    assert_response :success
  end

  test "should create operazione_trattamento" do
    assert_difference('OperazioneTrattamento.count') do
      post operazione_trattamentos_url, params: { operazione_trattamento: { id_operazione: @operazione_trattamento.id_operazione, id_trattamento: @operazione_trattamento.id_trattamento } }
    end

    assert_redirected_to operazione_trattamento_url(OperazioneTrattamento.last)
  end

  test "should show operazione_trattamento" do
    get operazione_trattamento_url(@operazione_trattamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_operazione_trattamento_url(@operazione_trattamento)
    assert_response :success
  end

  test "should update operazione_trattamento" do
    patch operazione_trattamento_url(@operazione_trattamento), params: { operazione_trattamento: { id_operazione: @operazione_trattamento.id_operazione, id_trattamento: @operazione_trattamento.id_trattamento } }
    assert_redirected_to operazione_trattamento_url(@operazione_trattamento)
  end

  test "should destroy operazione_trattamento" do
    assert_difference('OperazioneTrattamento.count', -1) do
      delete operazione_trattamento_url(@operazione_trattamento)
    end

    assert_redirected_to operazione_trattamentos_url
  end
end
