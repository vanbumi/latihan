require 'test_helper'

class DataControllerTest < ActionDispatch::IntegrationTest
  test "should get enter:string" do
    get data_enter:string_url
    assert_response :success
  end

  test "should get search:string" do
    get data_search:string_url
    assert_response :success
  end

end
