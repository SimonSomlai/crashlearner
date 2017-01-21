require 'test_helper'

class StaticpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get staticpages_about_url
    assert_response :success
  end

end
