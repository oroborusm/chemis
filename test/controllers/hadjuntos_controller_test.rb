require 'test_helper'

class HadjuntosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get hadjuntos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get hadjuntos_destroy_url
    assert_response :success
  end

  test "should get new" do
    get hadjuntos_new_url
    assert_response :success
  end

end
