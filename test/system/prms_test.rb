require "application_system_test_case"

class PrmsTest < ApplicationSystemTestCase
  setup do
    @prm = prms(:one)
  end

  test "visiting the index" do
    visit prms_url
    assert_selector "h1", text: "Prms"
  end

  test "should create prm" do
    visit prms_url
    click_on "New prm"

    fill_in "Body", with: @prm.body
    fill_in "Name", with: @prm.name
    fill_in "Project", with: @prm.project_id
    click_on "Create Prm"

    assert_text "Prm was successfully created"
    click_on "Back"
  end

  test "should update Prm" do
    visit prm_url(@prm)
    click_on "Edit this prm", match: :first

    fill_in "Body", with: @prm.body
    fill_in "Name", with: @prm.name
    fill_in "Project", with: @prm.project_id
    click_on "Update Prm"

    assert_text "Prm was successfully updated"
    click_on "Back"
  end

  test "should destroy Prm" do
    visit prm_url(@prm)
    click_on "Destroy this prm", match: :first

    assert_text "Prm was successfully destroyed"
  end
end
