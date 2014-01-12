require 'test_helper'

class PresentationControllerTest < ActionController::TestCase
  test "should get slide2" do
    get :slide2
    assert_response :success
  end

end
