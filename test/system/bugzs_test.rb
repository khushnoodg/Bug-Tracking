require "application_system_test_case"

class BugzsTest < ApplicationSystemTestCase
  setup do
    @bugz = bugzs(:one)
  end

  test "visiting the index" do
    visit bugzs_url
    assert_selector "h1", text: "Bugzs"
  end

  test "should create bugz" do
    visit bugzs_url
    click_on "New bugz"

    fill_in "B type", with: @bugz.b_type
    fill_in "Deadline", with: @bugz.deadline
    fill_in "Project", with: @bugz.project_id
    fill_in "Status", with: @bugz.status
    fill_in "Title", with: @bugz.title
    click_on "Create Bugz"

    assert_text "Bugz was successfully created"
    click_on "Back"
  end

  test "should update Bugz" do
    visit bugz_url(@bugz)
    click_on "Edit this bugz", match: :first

    fill_in "B type", with: @bugz.b_type
    fill_in "Deadline", with: @bugz.deadline
    fill_in "Project", with: @bugz.project_id
    fill_in "Status", with: @bugz.status
    fill_in "Title", with: @bugz.title
    click_on "Update Bugz"

    assert_text "Bugz was successfully updated"
    click_on "Back"
  end

  test "should destroy Bugz" do
    visit bugz_url(@bugz)
    click_on "Destroy this bugz", match: :first

    assert_text "Bugz was successfully destroyed"
  end
end
