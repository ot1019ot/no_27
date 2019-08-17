require 'test_helper'

class YearsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get years_create_url
    assert_response :success
  end

  test "should get update" do
    get years_update_url
    assert_response :success
  end

end
