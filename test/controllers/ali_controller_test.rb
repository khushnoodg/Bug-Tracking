require "test_helper"

class AliControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ali_index_url
    assert_response :success
  end
end
