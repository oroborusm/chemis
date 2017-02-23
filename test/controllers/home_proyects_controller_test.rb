require 'test_helper'

class HomeProyectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_proyect = home_proyects(:one)
  end

  test "should get index" do
    get home_proyects_url
    assert_response :success
  end

  test "should get new" do
    get new_home_proyect_url
    assert_response :success
  end

  test "should create home_proyect" do
    assert_difference('HomeProyect.count') do
      post home_proyects_url, params: { home_proyect: { description: @home_proyect.description, large_description: @home_proyect.large_description, name: @home_proyect.name } }
    end

    assert_redirected_to home_proyect_url(HomeProyect.last)
  end

  test "should show home_proyect" do
    get home_proyect_url(@home_proyect)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_proyect_url(@home_proyect)
    assert_response :success
  end

  test "should update home_proyect" do
    patch home_proyect_url(@home_proyect), params: { home_proyect: { description: @home_proyect.description, large_description: @home_proyect.large_description, name: @home_proyect.name } }
    assert_redirected_to home_proyect_url(@home_proyect)
  end

  test "should destroy home_proyect" do
    assert_difference('HomeProyect.count', -1) do
      delete home_proyect_url(@home_proyect)
    end

    assert_redirected_to home_proyects_url
  end
end
