require 'test_helper'

class GymControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gym_index_url
    assert_response :success
  end

end
