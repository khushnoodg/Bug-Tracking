require "application_system_test_case"

class ProjectUsersTest < ApplicationSystemTestCase
  setup do
    @project_user = project_users(:one)
  end

  test "visiting the index" do
    visit project_users_url
    assert_selector "h1", text: "Project users"
  end

  test "should create project user" do
    visit project_users_url
    click_on "New project user"

    fill_in "Project", with: @project_user.project_id
    fill_in "User", with: @project_user.user_id
    click_on "Create Project user"

    assert_text "Project user was successfully created"
    click_on "Back"
  end

  test "should update Project user" do
    visit project_user_url(@project_user)
    click_on "Edit this project user", match: :first

    fill_in "Project", with: @project_user.project_id
    fill_in "User", with: @project_user.user_id
    click_on "Update Project user"

    assert_text "Project user was successfully updated"
    click_on "Back"
  end

  test "should destroy Project user" do
    visit project_user_url(@project_user)
    click_on "Destroy this project user", match: :first

    assert_text "Project user was successfully destroyed"
  end
end
