require 'test_helper'

class ChangePositionAndReorderListControllerTest < ActionDispatch::IntegrationTest
  test "should get insert_at" do
    get change_position_and_reorder_list_insert_at_url
    assert_response :success
  end

  test "should get move_lower" do
    get change_position_and_reorder_list_move_lower_url
    assert_response :success
  end

  test "should get move_higher" do
    get change_position_and_reorder_list_move_higher_url
    assert_response :success
  end

  test "should get move_to_bottom" do
    get change_position_and_reorder_list_move_to_bottom_url
    assert_response :success
  end

  test "should get move_to_top" do
    get change_position_and_reorder_list_move_to_top_url
    assert_response :success
  end

  test "should get remove_from_list" do
    get change_position_and_reorder_list_remove_from_list_url
    assert_response :success
  end

end
