require 'test_helper'

class BricksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
