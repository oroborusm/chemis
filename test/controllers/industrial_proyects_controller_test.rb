require 'test_helper'

class IndustrialProyectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @industrial_proyect = industrial_proyects(:one)
  end

  test "should get index" do
    get industrial_proyects_url
    assert_response :success
  end

  test "should get new" do
    get new_industrial_proyect_url
    assert_response :success
  end

  test "should create industrial_proyect" do
    assert_difference('IndustrialProyect.count') do
      post industrial_proyects_url, params: { industrial_proyect: { description: @industrial_proyect.description, large_description: @industrial_proyect.large_description, name: @industrial_proyect.name } }
    end

    assert_redirected_to industrial_proyect_url(IndustrialProyect.last)
  end

  test "should show industrial_proyect" do
    get industrial_proyect_url(@industrial_proyect)
    assert_response :success
  end

  test "should get edit" do
    get edit_industrial_proyect_url(@industrial_proyect)
    assert_response :success
  end

  test "should update industrial_proyect" do
    patch industrial_proyect_url(@industrial_proyect), params: { industrial_proyect: { description: @industrial_proyect.description, large_description: @industrial_proyect.large_description, name: @industrial_proyect.name } }
    assert_redirected_to industrial_proyect_url(@industrial_proyect)
  end

  test "should destroy industrial_proyect" do
    assert_difference('IndustrialProyect.count', -1) do
      delete industrial_proyect_url(@industrial_proyect)
    end

    assert_redirected_to industrial_proyects_url
  end
end
