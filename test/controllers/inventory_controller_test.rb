require 'test_helper'

class InventoryControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get inventory_new_url
    assert_response :success
  end

end
