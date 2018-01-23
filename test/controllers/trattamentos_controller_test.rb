require 'test_helper'

class TrattamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trattamento = trattamentos(:one)
  end

  test "should get index" do
    get trattamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_trattamento_url
    assert_response :success
  end

  test "should create trattamento" do
    assert_difference('Trattamento.count') do
      post trattamentos_url, params: { trattamento: { avversit: @trattamento.avversit, data: @trattamento.data, fioritura: @trattamento.fioritura, id_attrezzo: @trattamento.id_attrezzo, id_coltura: @trattamento.id_coltura, raccolta: @trattamento.raccolta, semina: @trattamento.semina, trapianto: @trattamento.trapianto } }
    end

    assert_redirected_to trattamento_url(Trattamento.last)
  end

  test "should show trattamento" do
    get trattamento_url(@trattamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_trattamento_url(@trattamento)
    assert_response :success
  end

  test "should update trattamento" do
    patch trattamento_url(@trattamento), params: { trattamento: { avversit: @trattamento.avversit, data: @trattamento.data, fioritura: @trattamento.fioritura, id_attrezzo: @trattamento.id_attrezzo, id_coltura: @trattamento.id_coltura, raccolta: @trattamento.raccolta, semina: @trattamento.semina, trapianto: @trattamento.trapianto } }
    assert_redirected_to trattamento_url(@trattamento)
  end

  test "should destroy trattamento" do
    assert_difference('Trattamento.count', -1) do
      delete trattamento_url(@trattamento)
    end

    assert_redirected_to trattamentos_url
  end
end
