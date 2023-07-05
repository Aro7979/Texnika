require "application_system_test_case"

class IconesTest < ApplicationSystemTestCase
  setup do
    @icone = icones(:one)
  end

  test "visiting the index" do
    visit icones_url
    assert_selector "h1", text: "Icones"
  end

  test "should create icone" do
    visit icones_url
    click_on "New icone"

    fill_in "Description", with: @icone.description
    fill_in "Image url", with: @icone.image_url
    fill_in "Title", with: @icone.title
    click_on "Create Icone"

    assert_text "Icone was successfully created"
    click_on "Back"
  end

  test "should update Icone" do
    visit icone_url(@icone)
    click_on "Edit this icone", match: :first

    fill_in "Description", with: @icone.description
    fill_in "Image url", with: @icone.image_url
    fill_in "Title", with: @icone.title
    click_on "Update Icone"

    assert_text "Icone was successfully updated"
    click_on "Back"
  end

  test "should destroy Icone" do
    visit icone_url(@icone)
    click_on "Destroy this icone", match: :first

    assert_text "Icone was successfully destroyed"
  end
end
