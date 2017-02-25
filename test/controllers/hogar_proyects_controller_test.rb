require 'test_helper'

class HogarProyectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hogar_proyect = hogar_proyects(:one)
  end

  test "should get index" do
    get hogar_proyects_url
    assert_response :success
  end

  test "should get new" do
    get new_hogar_proyect_url
    assert_response :success
  end

  test "should create hogar_proyect" do
    assert_difference('HogarProyect.count') do
      post hogar_proyects_url, params: { hogar_proyect: { description: @hogar_proyect.description, large_description: @hogar_proyect.large_description, name: @hogar_proyect.name } }
    end

    assert_redirected_to hogar_proyect_url(HogarProyect.last)
  end

  test "should show hogar_proyect" do
    get hogar_proyect_url(@hogar_proyect)
    assert_response :success
  end

  test "should get edit" do
    get edit_hogar_proyect_url(@hogar_proyect)
    assert_response :success
  end

  test "should update hogar_proyect" do
    patch hogar_proyect_url(@hogar_proyect), params: { hogar_proyect: { description: @hogar_proyect.description, large_description: @hogar_proyect.large_description, name: @hogar_proyect.name } }
    assert_redirected_to hogar_proyect_url(@hogar_proyect)
  end

  test "should destroy hogar_proyect" do
    assert_difference('HogarProyect.count', -1) do
      delete hogar_proyect_url(@hogar_proyect)
    end

    assert_redirected_to hogar_proyects_url
  end
end
