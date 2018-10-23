require 'test_helper'

class GeocontrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get findaddress" do
    get geocontroller_findaddress_url
    assert_response :success
  end

end
