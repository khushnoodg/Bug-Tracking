require "test_helper"

class HamzaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hamza_index_url
    assert_response :success
  end
end
