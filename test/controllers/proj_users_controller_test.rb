require "test_helper"

class ProjUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proj_user = proj_users(:one)
  end

  test "should get index" do
    get proj_users_url
    assert_response :success
  end

  test "should get new" do
    get new_proj_user_url
    assert_response :success
  end

  test "should create proj_user" do
    assert_difference("ProjUser.count") do
      post proj_users_url, params: { proj_user: { project_id: @proj_user.project_id, user_id: @proj_user.user_id } }
    end

    assert_redirected_to proj_user_url(ProjUser.last)
  end

  test "should show proj_user" do
    get proj_user_url(@proj_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_proj_user_url(@proj_user)
    assert_response :success
  end

  test "should update proj_user" do
    patch proj_user_url(@proj_user), params: { proj_user: { project_id: @proj_user.project_id, user_id: @proj_user.user_id } }
    assert_redirected_to proj_user_url(@proj_user)
  end

  test "should destroy proj_user" do
    assert_difference("ProjUser.count", -1) do
      delete proj_user_url(@proj_user)
    end

    assert_redirected_to proj_users_url
  end
end
