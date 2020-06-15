require 'test_helper'

class UpdatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get updates_index_url
    assert_response :success
  end

  test "should get show" do
    get updates_show_url
    assert_response :success
  end

  test "should get new" do
    get updates_new_url
    assert_response :success
  end

  test "should get create" do
    get updates_create_url
    assert_response :success
  end

  test "should get edit" do
    get updates_edit_url
    assert_response :success
  end

  test "should get update" do
    get updates_update_url
    assert_response :success
  end

  test "should get destroy" do
    get updates_destroy_url
    assert_response :success
  end

end
