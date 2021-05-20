require "test_helper"

class SocialIconsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get social_icons_new_url
    assert_response :success
  end

  test "should get edit" do
    get social_icons_edit_url
    assert_response :success
  end
end
