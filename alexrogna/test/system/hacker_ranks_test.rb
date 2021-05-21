require "application_system_test_case"

class HackerRanksTest < ApplicationSystemTestCase
  setup do
    @hacker_rank = hacker_ranks(:one)
  end

  test "visiting the index" do
    visit hacker_ranks_url
    assert_selector "h1", text: "Hacker Ranks"
  end

  test "creating a Hacker rank" do
    visit hacker_ranks_url
    click_on "New Hacker Rank"

    fill_in "Badge name", with: @hacker_rank.badge_name
    fill_in "Cerificate name", with: @hacker_rank.cerificate_name
    fill_in "Url", with: @hacker_rank.url
    click_on "Create Hacker rank"

    assert_text "Hacker rank was successfully created"
    click_on "Back"
  end

  test "updating a Hacker rank" do
    visit hacker_ranks_url
    click_on "Edit", match: :first

    fill_in "Badge name", with: @hacker_rank.badge_name
    fill_in "Cerificate name", with: @hacker_rank.cerificate_name
    fill_in "Url", with: @hacker_rank.url
    click_on "Update Hacker rank"

    assert_text "Hacker rank was successfully updated"
    click_on "Back"
  end

  test "destroying a Hacker rank" do
    visit hacker_ranks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hacker rank was successfully destroyed"
  end
end
