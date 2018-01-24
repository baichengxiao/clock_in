require 'test_helper'

class TimesheetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get timesheets_index_url
    assert_response :success
  end

  test "should get show" do
    get timesheets_show_url
    assert_response :success
  end

  test "should get new" do
    get timesheets_new_url
    assert_response :success
  end

  test "should get edit" do
    get timesheets_edit_url
    assert_response :success
  end

  test "should get delete" do
    get timesheets_delete_url
    assert_response :success
  end

end
