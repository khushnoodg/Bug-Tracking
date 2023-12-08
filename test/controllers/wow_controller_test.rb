require "test_helper"

class WowControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wow_index_url
    assert_response :success
  end
end
