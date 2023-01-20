require "test_helper"

class PrmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prm = prms(:one)
  end

  test "should get index" do
    get prms_url
    assert_response :success
  end

  test "should get new" do
    get new_prm_url
    assert_response :success
  end

  test "should create prm" do
    assert_difference("Prm.count") do
      post prms_url, params: { prm: { body: @prm.body, name: @prm.name, project_id: @prm.project_id } }
    end

    assert_redirected_to prm_url(Prm.last)
  end

  test "should show prm" do
    get prm_url(@prm)
    assert_response :success
  end

  test "should get edit" do
    get edit_prm_url(@prm)
    assert_response :success
  end

  test "should update prm" do
    patch prm_url(@prm), params: { prm: { body: @prm.body, name: @prm.name, project_id: @prm.project_id } }
    assert_redirected_to prm_url(@prm)
  end

  test "should destroy prm" do
    assert_difference("Prm.count", -1) do
      delete prm_url(@prm)
    end

    assert_redirected_to prms_url
  end
end
