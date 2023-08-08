require "application_system_test_case"

class GlossesTest < ApplicationSystemTestCase
  setup do
    @gloss = glosses(:one)
  end

  test "visiting the index" do
    visit glosses_url
    assert_selector "h1", text: "Glosses"
  end

  test "should create gloss" do
    visit glosses_url
    click_on "New gloss"

    fill_in "Concepto", with: @gloss.concepto
    fill_in "Definición", with: @gloss.definición
    fill_in "Enlaces de referencia", with: @gloss.enlaces_de_referencia
    fill_in "Traducción", with: @gloss.traducción
    click_on "Create Gloss"

    assert_text "Gloss was successfully created"
    click_on "Back"
  end

  test "should update Gloss" do
    visit gloss_url(@gloss)
    click_on "Edit this gloss", match: :first

    fill_in "Concepto", with: @gloss.concepto
    fill_in "Definición", with: @gloss.definición
    fill_in "Enlaces de referencia", with: @gloss.enlaces_de_referencia
    fill_in "Traducción", with: @gloss.traducción
    click_on "Update Gloss"

    assert_text "Gloss was successfully updated"
    click_on "Back"
  end

  test "should destroy Gloss" do
    visit gloss_url(@gloss)
    click_on "Destroy this gloss", match: :first

    assert_text "Gloss was successfully destroyed"
  end
end
