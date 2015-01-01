require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get credits" do
    get :credits
    assert_response :success
  end

end
