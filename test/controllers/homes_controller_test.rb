require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get inde" do
    get homes_inde_url
    assert_response :success
  end

end
