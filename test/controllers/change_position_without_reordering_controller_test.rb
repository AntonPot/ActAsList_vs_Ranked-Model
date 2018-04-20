require 'test_helper'

class ChangePositionWithoutReorderingControllerTest < ActionDispatch::IntegrationTest
  test "should get increment_position" do
    get change_position_without_reordering_increment_position_url
    assert_response :success
  end

  test "should get decrement_position" do
    get change_position_without_reordering_decrement_position_url
    assert_response :success
  end

  test "should get set_list_position" do
    get change_position_without_reordering_set_list_position_url
    assert_response :success
  end

end
