require "test_helper"

class PersonalSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_skill = personal_skills(:one)
  end

  test "should get index" do
    get personal_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_skill_url
    assert_response :success
  end

  test "should create personal_skill" do
    assert_difference('PersonalSkill.count') do
      post personal_skills_url, params: { personal_skill: { description: @personal_skill.description, icon: @personal_skill.icon, order_id: @personal_skill.order_id, skill: @personal_skill.skill } }
    end

    assert_redirected_to personal_skill_url(PersonalSkill.last)
  end

  test "should show personal_skill" do
    get personal_skill_url(@personal_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_skill_url(@personal_skill)
    assert_response :success
  end

  test "should update personal_skill" do
    patch personal_skill_url(@personal_skill), params: { personal_skill: { description: @personal_skill.description, icon: @personal_skill.icon, order_id: @personal_skill.order_id, skill: @personal_skill.skill } }
    assert_redirected_to personal_skill_url(@personal_skill)
  end

  test "should destroy personal_skill" do
    assert_difference('PersonalSkill.count', -1) do
      delete personal_skill_url(@personal_skill)
    end

    assert_redirected_to personal_skills_url
  end
end
