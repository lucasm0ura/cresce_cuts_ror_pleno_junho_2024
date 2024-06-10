require "test_helper"

class DiscountCampaignsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get discount_campaigns_index_url
    assert_response :success
  end

  test "should get new" do
    get discount_campaigns_new_url
    assert_response :success
  end

  test "should get create" do
    get discount_campaigns_create_url
    assert_response :success
  end

  test "should get edit" do
    get discount_campaigns_edit_url
    assert_response :success
  end

  test "should get update" do
    get discount_campaigns_update_url
    assert_response :success
  end
end
