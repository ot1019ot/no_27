require 'test_helper'

class ManufacturesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get manufactures_create_url
    assert_response :success
  end

  test "should get destroy" do
    get manufactures_destroy_url
    assert_response :success
  end

end
