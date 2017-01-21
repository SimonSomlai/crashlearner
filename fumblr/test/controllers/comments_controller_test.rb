require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get comments_new_url
    assert_response :success
  end

  test "should get edit" do
    get comments_edit_url
    assert_response :success
  end

  test "should get update" do
    get comments_update_url
    assert_response :success
  end

  test "should get create" do
    get comments_create_url
    assert_response :success
  end

  test "should get delete" do
    get comments_delete_url
    assert_response :success
  end

  test "should get comment_params" do
    get comments_comment_params_url
    assert_response :success
  end

  test "should get find_comment" do
    get comments_find_comment_url
    assert_response :success
  end

end
