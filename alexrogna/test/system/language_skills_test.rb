require "application_system_test_case"

class LanguageSkillsTest < ApplicationSystemTestCase
  setup do
    @language_skill = language_skills(:one)
  end

  test "visiting the index" do
    visit language_skills_url
    assert_selector "h1", text: "Language Skills"
  end

  test "creating a Language skill" do
    visit language_skills_url
    click_on "New Language Skill"

    fill_in "Certificate name", with: @language_skill.certificate_name
    fill_in "Certificate url", with: @language_skill.certificate_url
    check "Is native" if @language_skill.is_native
    fill_in "Language", with: @language_skill.language
    fill_in "Procent", with: @language_skill.procent
    click_on "Create Language skill"

    assert_text "Language skill was successfully created"
    click_on "Back"
  end

  test "updating a Language skill" do
    visit language_skills_url
    click_on "Edit", match: :first

    fill_in "Certificate name", with: @language_skill.certificate_name
    fill_in "Certificate url", with: @language_skill.certificate_url
    check "Is native" if @language_skill.is_native
    fill_in "Language", with: @language_skill.language
    fill_in "Procent", with: @language_skill.procent
    click_on "Update Language skill"

    assert_text "Language skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Language skill" do
    visit language_skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Language skill was successfully destroyed"
  end
end
