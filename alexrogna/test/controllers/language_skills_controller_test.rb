require "test_helper"

class LanguageSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @language_skill = language_skills(:one)
  end

  test "should get index" do
    get language_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_language_skill_url
    assert_response :success
  end

  test "should create language_skill" do
    assert_difference('LanguageSkill.count') do
      post language_skills_url, params: { language_skill: { certificate_name: @language_skill.certificate_name, certificate_url: @language_skill.certificate_url, is_native: @language_skill.is_native, language: @language_skill.language, procent: @language_skill.procent } }
    end

    assert_redirected_to language_skill_url(LanguageSkill.last)
  end

  test "should show language_skill" do
    get language_skill_url(@language_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_language_skill_url(@language_skill)
    assert_response :success
  end

  test "should update language_skill" do
    patch language_skill_url(@language_skill), params: { language_skill: { certificate_name: @language_skill.certificate_name, certificate_url: @language_skill.certificate_url, is_native: @language_skill.is_native, language: @language_skill.language, procent: @language_skill.procent } }
    assert_redirected_to language_skill_url(@language_skill)
  end

  test "should destroy language_skill" do
    assert_difference('LanguageSkill.count', -1) do
      delete language_skill_url(@language_skill)
    end

    assert_redirected_to language_skills_url
  end
end
