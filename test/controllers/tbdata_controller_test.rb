require 'test_helper'

class TbdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbdatum = tbdata(:one)
  end

  test "should get index" do
    get tbdata_url
    assert_response :success
  end

  test "should get new" do
    get new_tbdatum_url
    assert_response :success
  end

  test "should create tbdatum" do
    assert_difference('Tbdatum.count') do
      post tbdata_url, params: { tbdatum: { address: @tbdatum.address, age: @tbdatum.age, level: @tbdatum.level, name: @tbdatum.name } }
    end

    assert_redirected_to tbdatum_url(Tbdatum.last)
  end

  test "should show tbdatum" do
    get tbdatum_url(@tbdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_tbdatum_url(@tbdatum)
    assert_response :success
  end

  test "should update tbdatum" do
    patch tbdatum_url(@tbdatum), params: { tbdatum: { address: @tbdatum.address, age: @tbdatum.age, level: @tbdatum.level, name: @tbdatum.name } }
    assert_redirected_to tbdatum_url(@tbdatum)
  end

  test "should destroy tbdatum" do
    assert_difference('Tbdatum.count', -1) do
      delete tbdatum_url(@tbdatum)
    end

    assert_redirected_to tbdata_url
  end
end
