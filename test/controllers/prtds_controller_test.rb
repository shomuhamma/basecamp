require "test_helper"

class PrtdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prtd = prtds(:one)
  end

  test "should get index" do
    get prtds_url
    assert_response :success
  end

  test "should get new" do
    get new_prtd_url
    assert_response :success
  end

  test "should create prtd" do
    assert_difference("Prtd.count") do
      post prtds_url, params: { prtd: { description: @prtd.description, project_id: @prtd.project_id } }
    end

    assert_redirected_to prtd_url(Prtd.last)
  end

  test "should show prtd" do
    get prtd_url(@prtd)
    assert_response :success
  end

  test "should get edit" do
    get edit_prtd_url(@prtd)
    assert_response :success
  end

  test "should update prtd" do
    patch prtd_url(@prtd), params: { prtd: { description: @prtd.description, project_id: @prtd.project_id } }
    assert_redirected_to prtd_url(@prtd)
  end

  test "should destroy prtd" do
    assert_difference("Prtd.count", -1) do
      delete prtd_url(@prtd)
    end

    assert_redirected_to prtds_url
  end
end
