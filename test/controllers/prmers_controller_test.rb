require "test_helper"

class PrmersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prmer = prmers(:one)
  end

  test "should get index" do
    get prmers_url
    assert_response :success
  end

  test "should get new" do
    get new_prmer_url
    assert_response :success
  end

  test "should create prmer" do
    assert_difference("Prmer.count") do
      post prmers_url, params: { prmer: { body: @prmer.body, name: @prmer.name, prm_id: @prmer.prm_id } }
    end

    assert_redirected_to prmer_url(Prmer.last)
  end

  test "should show prmer" do
    get prmer_url(@prmer)
    assert_response :success
  end

  test "should get edit" do
    get edit_prmer_url(@prmer)
    assert_response :success
  end

  test "should update prmer" do
    patch prmer_url(@prmer), params: { prmer: { body: @prmer.body, name: @prmer.name, prm_id: @prmer.prm_id } }
    assert_redirected_to prmer_url(@prmer)
  end

  test "should destroy prmer" do
    assert_difference("Prmer.count", -1) do
      delete prmer_url(@prmer)
    end

    assert_redirected_to prmers_url
  end
end
