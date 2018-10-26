require 'test_helper'

class ProffesionalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get proffesional_index_url
    assert_response :success
  end

end
