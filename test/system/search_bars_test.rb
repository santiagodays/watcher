require "application_system_test_case"

class SearchBarsTest < ApplicationSystemTestCase
  setup do
    @search_bar = search_bars(:one)
  end

  test "visiting the index" do
    visit search_bars_url
    assert_selector "h1", text: "Search bars"
  end

  test "should create search bar" do
    visit search_bars_url
    click_on "New search bar"

    click_on "Create Search bar"

    assert_text "Search bar was successfully created"
    click_on "Back"
  end

  test "should update Search bar" do
    visit search_bar_url(@search_bar)
    click_on "Edit this search bar", match: :first

    click_on "Update Search bar"

    assert_text "Search bar was successfully updated"
    click_on "Back"
  end

  test "should destroy Search bar" do
    visit search_bar_url(@search_bar)
    click_on "Destroy this search bar", match: :first

    assert_text "Search bar was successfully destroyed"
  end
end
