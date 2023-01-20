require "application_system_test_case"

class PrmersTest < ApplicationSystemTestCase
  setup do
    @prmer = prmers(:one)
  end

  test "visiting the index" do
    visit prmers_url
    assert_selector "h1", text: "Prmers"
  end

  test "should create prmer" do
    visit prmers_url
    click_on "New prmer"

    fill_in "Body", with: @prmer.body
    fill_in "Name", with: @prmer.name
    fill_in "Prm", with: @prmer.prm_id
    click_on "Create Prmer"

    assert_text "Prmer was successfully created"
    click_on "Back"
  end

  test "should update Prmer" do
    visit prmer_url(@prmer)
    click_on "Edit this prmer", match: :first

    fill_in "Body", with: @prmer.body
    fill_in "Name", with: @prmer.name
    fill_in "Prm", with: @prmer.prm_id
    click_on "Update Prmer"

    assert_text "Prmer was successfully updated"
    click_on "Back"
  end

  test "should destroy Prmer" do
    visit prmer_url(@prmer)
    click_on "Destroy this prmer", match: :first

    assert_text "Prmer was successfully destroyed"
  end
end
