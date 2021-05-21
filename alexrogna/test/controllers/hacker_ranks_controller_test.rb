require "test_helper"

class HackerRanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hacker_rank = hacker_ranks(:one)
  end

  test "should get index" do
    get hacker_ranks_url
    assert_response :success
  end

  test "should get new" do
    get new_hacker_rank_url
    assert_response :success
  end

  test "should create hacker_rank" do
    assert_difference('HackerRank.count') do
      post hacker_ranks_url, params: { hacker_rank: { badge_name: @hacker_rank.badge_name, cerificate_name: @hacker_rank.cerificate_name, url: @hacker_rank.url } }
    end

    assert_redirected_to hacker_rank_url(HackerRank.last)
  end

  test "should show hacker_rank" do
    get hacker_rank_url(@hacker_rank)
    assert_response :success
  end

  test "should get edit" do
    get edit_hacker_rank_url(@hacker_rank)
    assert_response :success
  end

  test "should update hacker_rank" do
    patch hacker_rank_url(@hacker_rank), params: { hacker_rank: { badge_name: @hacker_rank.badge_name, cerificate_name: @hacker_rank.cerificate_name, url: @hacker_rank.url } }
    assert_redirected_to hacker_rank_url(@hacker_rank)
  end

  test "should destroy hacker_rank" do
    assert_difference('HackerRank.count', -1) do
      delete hacker_rank_url(@hacker_rank)
    end

    assert_redirected_to hacker_ranks_url
  end
end
