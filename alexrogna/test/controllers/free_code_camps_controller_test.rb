require "test_helper"

class FreeCodeCampsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @free_code_camp = free_code_camps(:one)
  end

  test "should get index" do
    get free_code_camps_url
    assert_response :success
  end

  test "should get new" do
    get new_free_code_camp_url
    assert_response :success
  end

  test "should create free_code_camp" do
    assert_difference('FreeCodeCamp.count') do
      post free_code_camps_url, params: { free_code_camp: { cerificate_name: @free_code_camp.cerificate_name, url: @free_code_camp.url } }
    end

    assert_redirected_to free_code_camp_url(FreeCodeCamp.last)
  end

  test "should show free_code_camp" do
    get free_code_camp_url(@free_code_camp)
    assert_response :success
  end

  test "should get edit" do
    get edit_free_code_camp_url(@free_code_camp)
    assert_response :success
  end

  test "should update free_code_camp" do
    patch free_code_camp_url(@free_code_camp), params: { free_code_camp: { cerificate_name: @free_code_camp.cerificate_name, url: @free_code_camp.url } }
    assert_redirected_to free_code_camp_url(@free_code_camp)
  end

  test "should destroy free_code_camp" do
    assert_difference('FreeCodeCamp.count', -1) do
      delete free_code_camp_url(@free_code_camp)
    end

    assert_redirected_to free_code_camps_url
  end
end
