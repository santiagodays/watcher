require "test_helper"

class SearchBarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_bar = search_bars(:one)
  end

  test "should get index" do
    get search_bars_url
    assert_response :success
  end

  test "should get new" do
    get new_search_bar_url
    assert_response :success
  end

  test "should create search_bar" do
    assert_difference("SearchBar.count") do
      post search_bars_url, params: { search_bar: {  } }
    end

    assert_redirected_to search_bar_url(SearchBar.last)
  end

  test "should show search_bar" do
    get search_bar_url(@search_bar)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_bar_url(@search_bar)
    assert_response :success
  end

  test "should update search_bar" do
    patch search_bar_url(@search_bar), params: { search_bar: {  } }
    assert_redirected_to search_bar_url(@search_bar)
  end

  test "should destroy search_bar" do
    assert_difference("SearchBar.count", -1) do
      delete search_bar_url(@search_bar)
    end

    assert_redirected_to search_bars_url
  end
end
