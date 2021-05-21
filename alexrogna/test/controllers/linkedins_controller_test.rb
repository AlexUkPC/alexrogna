require "test_helper"

class LinkedinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linkedin = linkedins(:one)
  end

  test "should get index" do
    get linkedins_url
    assert_response :success
  end

  test "should get new" do
    get new_linkedin_url
    assert_response :success
  end

  test "should create linkedin" do
    assert_difference('Linkedin.count') do
      post linkedins_url, params: { linkedin: { badge_name: @linkedin.badge_name } }
    end

    assert_redirected_to linkedin_url(Linkedin.last)
  end

  test "should show linkedin" do
    get linkedin_url(@linkedin)
    assert_response :success
  end

  test "should get edit" do
    get edit_linkedin_url(@linkedin)
    assert_response :success
  end

  test "should update linkedin" do
    patch linkedin_url(@linkedin), params: { linkedin: { badge_name: @linkedin.badge_name } }
    assert_redirected_to linkedin_url(@linkedin)
  end

  test "should destroy linkedin" do
    assert_difference('Linkedin.count', -1) do
      delete linkedin_url(@linkedin)
    end

    assert_redirected_to linkedins_url
  end
end
