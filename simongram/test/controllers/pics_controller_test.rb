require 'test_helper'

class PicsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get pics_show_url
    assert_response :success
  end

  test "should get index" do
    get pics_index_url
    assert_response :success
  end

  test "should get edit" do
    get pics_edit_url
    assert_response :success
  end

  test "should get new" do
    get pics_new_url
    assert_response :success
  end

end
