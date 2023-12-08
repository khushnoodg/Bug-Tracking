require "test_helper"

class BugzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bugz = bugzs(:one)
  end

  test "should get index" do
    get bugzs_url
    assert_response :success
  end

  test "should get new" do
    get new_bugz_url
    assert_response :success
  end

  test "should create bugz" do
    assert_difference("Bugz.count") do
      post bugzs_url, params: { bugz: { b_type: @bugz.b_type, deadline: @bugz.deadline, project_id: @bugz.project_id, status: @bugz.status, title: @bugz.title } }
    end

    assert_redirected_to bugz_url(Bugz.last)
  end

  test "should show bugz" do
    get bugz_url(@bugz)
    assert_response :success
  end

  test "should get edit" do
    get edit_bugz_url(@bugz)
    assert_response :success
  end

  test "should update bugz" do
    patch bugz_url(@bugz), params: { bugz: { b_type: @bugz.b_type, deadline: @bugz.deadline, project_id: @bugz.project_id, status: @bugz.status, title: @bugz.title } }
    assert_redirected_to bugz_url(@bugz)
  end

  test "should destroy bugz" do
    assert_difference("Bugz.count", -1) do
      delete bugz_url(@bugz)
    end

    assert_redirected_to bugzs_url
  end
end
