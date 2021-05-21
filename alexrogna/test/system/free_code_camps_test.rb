require "application_system_test_case"

class FreeCodeCampsTest < ApplicationSystemTestCase
  setup do
    @free_code_camp = free_code_camps(:one)
  end

  test "visiting the index" do
    visit free_code_camps_url
    assert_selector "h1", text: "Free Code Camps"
  end

  test "creating a Free code camp" do
    visit free_code_camps_url
    click_on "New Free Code Camp"

    fill_in "Cerificate name", with: @free_code_camp.cerificate_name
    fill_in "Url", with: @free_code_camp.url
    click_on "Create Free code camp"

    assert_text "Free code camp was successfully created"
    click_on "Back"
  end

  test "updating a Free code camp" do
    visit free_code_camps_url
    click_on "Edit", match: :first

    fill_in "Cerificate name", with: @free_code_camp.cerificate_name
    fill_in "Url", with: @free_code_camp.url
    click_on "Update Free code camp"

    assert_text "Free code camp was successfully updated"
    click_on "Back"
  end

  test "destroying a Free code camp" do
    visit free_code_camps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Free code camp was successfully destroyed"
  end
end
