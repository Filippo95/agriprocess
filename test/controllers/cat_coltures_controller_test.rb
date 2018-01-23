require 'test_helper'

class CatColturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat_colture = cat_coltures(:one)
  end

  test "should get index" do
    get cat_coltures_url
    assert_response :success
  end

  test "should get new" do
    get new_cat_colture_url
    assert_response :success
  end

  test "should create cat_colture" do
    assert_difference('CatColture.count') do
      post cat_coltures_url, params: { cat_colture: { descrizione: @cat_colture.descrizione, id_parent: @cat_colture.id_parent, nome: @cat_colture.nome } }
    end

    assert_redirected_to cat_colture_url(CatColture.last)
  end

  test "should show cat_colture" do
    get cat_colture_url(@cat_colture)
    assert_response :success
  end

  test "should get edit" do
    get edit_cat_colture_url(@cat_colture)
    assert_response :success
  end

  test "should update cat_colture" do
    patch cat_colture_url(@cat_colture), params: { cat_colture: { descrizione: @cat_colture.descrizione, id_parent: @cat_colture.id_parent, nome: @cat_colture.nome } }
    assert_redirected_to cat_colture_url(@cat_colture)
  end

  test "should destroy cat_colture" do
    assert_difference('CatColture.count', -1) do
      delete cat_colture_url(@cat_colture)
    end

    assert_redirected_to cat_coltures_url
  end
end
