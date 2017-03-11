require 'test_helper'

class ObatControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get obat_index_url
    assert_response :success
  end

  test "should get new" do
    get obat_new_url
    assert_response :success
  end

end
