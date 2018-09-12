require 'test_helper'

class AdControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ad_index_url
    assert_response :success
  end

end
