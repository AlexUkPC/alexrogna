require "test_helper"

class SocialIconsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_icon = social_icons(:one)
  end

  test "should get index" do
    get social_icons_url
    assert_response :success
  end

  test "should get new" do
    get new_social_icon_url
    assert_response :success
  end

  test "should create social_icon" do
    assert_difference('SocialIcon.count') do
      post social_icons_url, params: { social_icon: { icon: @social_icon.icon, link: @social_icon.link } }
    end

    assert_redirected_to social_icon_url(SocialIcon.last)
  end

  test "should show social_icon" do
    get social_icon_url(@social_icon)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_icon_url(@social_icon)
    assert_response :success
  end

  test "should update social_icon" do
    patch social_icon_url(@social_icon), params: { social_icon: { icon: @social_icon.icon, link: @social_icon.link } }
    assert_redirected_to social_icon_url(@social_icon)
  end

  test "should destroy social_icon" do
    assert_difference('SocialIcon.count', -1) do
      delete social_icon_url(@social_icon)
    end

    assert_redirected_to social_icons_url
  end
end
