require "test_helper"

class PatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patch = patches(:one)
  end

  test "should get index" do
    get patches_url
    assert_response :success
  end

  test "should get new" do
    get new_patch_url
    assert_response :success
  end

  test "should create patch" do
    assert_difference("Patch.count") do
      post patches_url, params: { patch: { description: @patch.description, project_id: @patch.project_id } }
    end

    assert_redirected_to patch_url(Patch.last)
  end

  test "should show patch" do
    get patch_url(@patch)
    assert_response :success
  end

  test "should get edit" do
    get edit_patch_url(@patch)
    assert_response :success
  end

  test "should update patch" do
    patch patch_url(@patch), params: { patch: { description: @patch.description, project_id: @patch.project_id } }
    assert_redirected_to patch_url(@patch)
  end

  test "should destroy patch" do
    assert_difference("Patch.count", -1) do
      delete patch_url(@patch)
    end

    assert_redirected_to patches_url
  end
end
