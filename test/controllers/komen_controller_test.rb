require 'test_helper'

class KomenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @koman = komen(:one)
  end

  test "should get index" do
    get komen_url
    assert_response :success
  end

  test "should get new" do
    get new_koman_url
    assert_response :success
  end

  test "should create koman" do
    assert_difference('Koman.count') do
      post komen_url, params: { koman: { comment: @koman.comment, name: @koman.name } }
    end

    assert_redirected_to koman_url(Koman.last)
  end

  test "should show koman" do
    get koman_url(@koman)
    assert_response :success
  end

  test "should get edit" do
    get edit_koman_url(@koman)
    assert_response :success
  end

  test "should update koman" do
    patch koman_url(@koman), params: { koman: { comment: @koman.comment, name: @koman.name } }
    assert_redirected_to koman_url(@koman)
  end

  test "should destroy koman" do
    assert_difference('Koman.count', -1) do
      delete koman_url(@koman)
    end

    assert_redirected_to komen_url
  end
end
