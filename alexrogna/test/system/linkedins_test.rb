require "application_system_test_case"

class LinkedinsTest < ApplicationSystemTestCase
  setup do
    @linkedin = linkedins(:one)
  end

  test "visiting the index" do
    visit linkedins_url
    assert_selector "h1", text: "Linkedins"
  end

  test "creating a Linkedin" do
    visit linkedins_url
    click_on "New Linkedin"

    fill_in "Badge name", with: @linkedin.badge_name
    click_on "Create Linkedin"

    assert_text "Linkedin was successfully created"
    click_on "Back"
  end

  test "updating a Linkedin" do
    visit linkedins_url
    click_on "Edit", match: :first

    fill_in "Badge name", with: @linkedin.badge_name
    click_on "Update Linkedin"

    assert_text "Linkedin was successfully updated"
    click_on "Back"
  end

  test "destroying a Linkedin" do
    visit linkedins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Linkedin was successfully destroyed"
  end
end
