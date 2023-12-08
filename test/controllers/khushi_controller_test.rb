require "test_helper"

class KhushiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get khushi_index_url
    assert_response :success
  end
end
