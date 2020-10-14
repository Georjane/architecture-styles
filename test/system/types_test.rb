require "application_system_test_case"

class TypesTest < ApplicationSystemTestCase
  setup do
    @type = types(:one)
  end

  test "visiting the index" do
    visit types_url
    assert_selector "h1", text: "Types"
  end

  test "creating a Type" do
    visit types_url
    click_on "New Type"

    fill_in "Name", with: @type.name
    click_on "Create Type"

    assert_text "Type was successfully created"
    click_on "Back"
  end

  test "updating a Type" do
    visit types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type.name
    click_on "Update Type"

    assert_text "Type was successfully updated"
    click_on "Back"
  end

  test "destroying a Type" do
    visit types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type was successfully destroyed"
  end
end
