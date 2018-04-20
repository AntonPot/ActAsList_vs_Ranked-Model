require 'test_helper'

class ItemsPositionControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get items_position_show_url
    assert_response :success
  end

end
