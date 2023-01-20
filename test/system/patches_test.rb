require "application_system_test_case"

class PatchesTest < ApplicationSystemTestCase
  setup do
    @patch = patches(:one)
  end

  test "visiting the index" do
    visit patches_url
    assert_selector "h1", text: "Patches"
  end

  test "should create patch" do
    visit patches_url
    click_on "New patch"

    fill_in "Description", with: @patch.description
    fill_in "Project", with: @patch.project_id
    click_on "Create Patch"

    assert_text "Patch was successfully created"
    click_on "Back"
  end

  test "should update Patch" do
    visit patch_url(@patch)
    click_on "Edit this patch", match: :first

    fill_in "Description", with: @patch.description
    fill_in "Project", with: @patch.project_id
    click_on "Update Patch"

    assert_text "Patch was successfully updated"
    click_on "Back"
  end

  test "should destroy Patch" do
    visit patch_url(@patch)
    click_on "Destroy this patch", match: :first

    assert_text "Patch was successfully destroyed"
  end
end
