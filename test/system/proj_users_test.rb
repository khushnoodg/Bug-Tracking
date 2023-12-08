require "application_system_test_case"

class ProjUsersTest < ApplicationSystemTestCase
  setup do
    @proj_user = proj_users(:one)
  end

  test "visiting the index" do
    visit proj_users_url
    assert_selector "h1", text: "Proj users"
  end

  test "should create proj user" do
    visit proj_users_url
    click_on "New proj user"

    fill_in "Project", with: @proj_user.project_id
    fill_in "User", with: @proj_user.user_id
    click_on "Create Proj user"

    assert_text "Proj user was successfully created"
    click_on "Back"
  end

  test "should update Proj user" do
    visit proj_user_url(@proj_user)
    click_on "Edit this proj user", match: :first

    fill_in "Project", with: @proj_user.project_id
    fill_in "User", with: @proj_user.user_id
    click_on "Update Proj user"

    assert_text "Proj user was successfully updated"
    click_on "Back"
  end

  test "should destroy Proj user" do
    visit proj_user_url(@proj_user)
    click_on "Destroy this proj user", match: :first

    assert_text "Proj user was successfully destroyed"
  end
end
