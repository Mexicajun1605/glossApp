require "application_system_test_case"

class ModelsTest < ApplicationSystemTestCase
  setup do
    @model = models(:one)
  end

  test "visiting the index" do
    visit models_url
    assert_selector "h1", text: "Models"
  end

  test "should create model" do
    visit models_url
    click_on "New model"

    fill_in "Concepto", with: @model.concepto
    fill_in "Definición", with: @model.definición
    fill_in "Enlaces de referencia", with: @model.enlaces_de_referencia
    fill_in "Glossary", with: @model.glossary
    fill_in "Traducción", with: @model.traducción
    click_on "Create Model"

    assert_text "Model was successfully created"
    click_on "Back"
  end

  test "should update Model" do
    visit model_url(@model)
    click_on "Edit this model", match: :first

    fill_in "Concepto", with: @model.concepto
    fill_in "Definición", with: @model.definición
    fill_in "Enlaces de referencia", with: @model.enlaces_de_referencia
    fill_in "Glossary", with: @model.glossary
    fill_in "Traducción", with: @model.traducción
    click_on "Update Model"

    assert_text "Model was successfully updated"
    click_on "Back"
  end

  test "should destroy Model" do
    visit model_url(@model)
    click_on "Destroy this model", match: :first

    assert_text "Model was successfully destroyed"
  end
end
