require 'test_helper'

class InternalControllerTest < ActionController::TestCase
  test "should get intranet" do
    get :intranet
    assert_response :success
  end

end
