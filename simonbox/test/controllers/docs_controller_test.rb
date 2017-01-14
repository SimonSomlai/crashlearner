require 'test_helper'

class DocsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get docs_index_url
    assert_response :success
  end

  test "should get create" do
    get docs_create_url
    assert_response :success
  end

  test "should get update" do
    get docs_update_url
    assert_response :success
  end

  test "should get show" do
    get docs_show_url
    assert_response :success
  end

  test "should get delete" do
    get docs_delete_url
    assert_response :success
  end

  test "should get find_doc" do
    get docs_find_doc_url
    assert_response :success
  end

  test "should get doc_params" do
    get docs_doc_params_url
    assert_response :success
  end

end
