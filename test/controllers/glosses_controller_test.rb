require "test_helper"

class GlossesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gloss = glosses(:one)
  end

  test "should get index" do
    get glosses_url
    assert_response :success
  end

  test "should get new" do
    get new_gloss_url
    assert_response :success
  end

  test "should create gloss" do
    assert_difference("Gloss.count") do
      post glosses_url, params: { gloss: { concepto: @gloss.concepto, definición: @gloss.definición, enlaces_de_referencia: @gloss.enlaces_de_referencia, traducción: @gloss.traducción } }
    end

    assert_redirected_to gloss_url(Gloss.last)
  end

  test "should show gloss" do
    get gloss_url(@gloss)
    assert_response :success
  end

  test "should get edit" do
    get edit_gloss_url(@gloss)
    assert_response :success
  end

  test "should update gloss" do
    patch gloss_url(@gloss), params: { gloss: { concepto: @gloss.concepto, definición: @gloss.definición, enlaces_de_referencia: @gloss.enlaces_de_referencia, traducción: @gloss.traducción } }
    assert_redirected_to gloss_url(@gloss)
  end

  test "should destroy gloss" do
    assert_difference("Gloss.count", -1) do
      delete gloss_url(@gloss)
    end

    assert_redirected_to glosses_url
  end
end
