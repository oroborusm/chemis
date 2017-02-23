require 'test_helper'

class HogarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hogar_index_url
    assert_response :success
  end

end
