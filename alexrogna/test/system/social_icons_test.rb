require "application_system_test_case"

class SocialIconsTest < ApplicationSystemTestCase
  setup do
    @social_icon = social_icons(:one)
  end

  test "visiting the index" do
    visit social_icons_url
    assert_selector "h1", text: "Social Icons"
  end

  test "creating a Social icon" do
    visit social_icons_url
    click_on "New Social Icon"

    fill_in "Icon", with: @social_icon.icon
    fill_in "Link", with: @social_icon.link
    click_on "Create Social icon"

    assert_text "Social icon was successfully created"
    click_on "Back"
  end

  test "updating a Social icon" do
    visit social_icons_url
    click_on "Edit", match: :first

    fill_in "Icon", with: @social_icon.icon
    fill_in "Link", with: @social_icon.link
    click_on "Update Social icon"

    assert_text "Social icon was successfully updated"
    click_on "Back"
  end

  test "destroying a Social icon" do
    visit social_icons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social icon was successfully destroyed"
  end
end
