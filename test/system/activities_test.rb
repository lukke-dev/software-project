require "application_system_test_case"

class ActivitiesTest < ApplicationSystemTestCase
  setup do
    @activity = activities(:one)
  end

  test "visiting the index" do
    visit activities_url
    assert_selector "h1", text: "Activities"
  end

  test "creating a Activity" do
    visit activities_url
    click_on "New Activity"

    fill_in "End date", with: @activity.end_date
    check "Finished" if @activity.finished
    fill_in "Name activity", with: @activity.name_activity
    fill_in "Project", with: @activity.project_id
    fill_in "Start date", with: @activity.start_date
    click_on "Create Activity"

    assert_text "Activity was successfully created"
    click_on "Back"
  end

  test "updating a Activity" do
    visit activities_url
    click_on "Edit", match: :first

    fill_in "End date", with: @activity.end_date
    check "Finished" if @activity.finished
    fill_in "Name activity", with: @activity.name_activity
    fill_in "Project", with: @activity.project_id
    fill_in "Start date", with: @activity.start_date
    click_on "Update Activity"

    assert_text "Activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity" do
    visit activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity was successfully destroyed"
  end
end
