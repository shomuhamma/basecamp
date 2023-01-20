require "application_system_test_case"

class PrtdsTest < ApplicationSystemTestCase
  setup do
    @prtd = prtds(:one)
  end

  test "visiting the index" do
    visit prtds_url
    assert_selector "h1", text: "Prtds"
  end

  test "should create prtd" do
    visit prtds_url
    click_on "New prtd"

    fill_in "Description", with: @prtd.description
    fill_in "Project", with: @prtd.project_id
    click_on "Create Prtd"

    assert_text "Prtd was successfully created"
    click_on "Back"
  end

  test "should update Prtd" do
    visit prtd_url(@prtd)
    click_on "Edit this prtd", match: :first

    fill_in "Description", with: @prtd.description
    fill_in "Project", with: @prtd.project_id
    click_on "Update Prtd"

    assert_text "Prtd was successfully updated"
    click_on "Back"
  end

  test "should destroy Prtd" do
    visit prtd_url(@prtd)
    click_on "Destroy this prtd", match: :first

    assert_text "Prtd was successfully destroyed"
  end
end
