require 'test_helper'

class OperazionesCatColturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operaziones_cat_colture = operaziones_cat_coltures(:one)
  end

  test "should get index" do
    get operaziones_cat_coltures_url
    assert_response :success
  end

  test "should get new" do
    get new_operaziones_cat_colture_url
    assert_response :success
  end

  test "should create operaziones_cat_colture" do
    assert_difference('OperazionesCatColture.count') do
      post operaziones_cat_coltures_url, params: { operaziones_cat_colture: { id_cat_coltures: @operaziones_cat_colture.id_cat_coltures, id_operazione: @operaziones_cat_colture.id_operazione } }
    end

    assert_redirected_to operaziones_cat_colture_url(OperazionesCatColture.last)
  end

  test "should show operaziones_cat_colture" do
    get operaziones_cat_colture_url(@operaziones_cat_colture)
    assert_response :success
  end

  test "should get edit" do
    get edit_operaziones_cat_colture_url(@operaziones_cat_colture)
    assert_response :success
  end

  test "should update operaziones_cat_colture" do
    patch operaziones_cat_colture_url(@operaziones_cat_colture), params: { operaziones_cat_colture: { id_cat_coltures: @operaziones_cat_colture.id_cat_coltures, id_operazione: @operaziones_cat_colture.id_operazione } }
    assert_redirected_to operaziones_cat_colture_url(@operaziones_cat_colture)
  end

  test "should destroy operaziones_cat_colture" do
    assert_difference('OperazionesCatColture.count', -1) do
      delete operaziones_cat_colture_url(@operaziones_cat_colture)
    end

    assert_redirected_to operaziones_cat_coltures_url
  end
end
