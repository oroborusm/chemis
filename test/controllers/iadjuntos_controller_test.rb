require 'test_helper'

class IadjuntosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get iadjuntos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get iadjuntos_destroy_url
    assert_response :success
  end

  test "should get new" do
    get iadjuntos_new_url
    assert_response :success
  end

end
