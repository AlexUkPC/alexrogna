require "application_system_test_case"

class PersonalSkillsTest < ApplicationSystemTestCase
  setup do
    @personal_skill = personal_skills(:one)
  end

  test "visiting the index" do
    visit personal_skills_url
    assert_selector "h1", text: "Personal Skills"
  end

  test "creating a Personal skill" do
    visit personal_skills_url
    click_on "New Personal Skill"

    fill_in "Description", with: @personal_skill.description
    fill_in "Icon", with: @personal_skill.icon
    fill_in "Order", with: @personal_skill.order_id
    fill_in "Skill", with: @personal_skill.skill
    click_on "Create Personal skill"

    assert_text "Personal skill was successfully created"
    click_on "Back"
  end

  test "updating a Personal skill" do
    visit personal_skills_url
    click_on "Edit", match: :first

    fill_in "Description", with: @personal_skill.description
    fill_in "Icon", with: @personal_skill.icon
    fill_in "Order", with: @personal_skill.order_id
    fill_in "Skill", with: @personal_skill.skill
    click_on "Update Personal skill"

    assert_text "Personal skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal skill" do
    visit personal_skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal skill was successfully destroyed"
  end
end
