require 'test_helper'

class IndustriaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get industria_index_url
    assert_response :success
  end

end
