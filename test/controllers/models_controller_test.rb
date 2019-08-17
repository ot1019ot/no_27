require 'test_helper'

class ModelsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get models_create_url
    assert_response :success
  end

  test "should get update" do
    get models_update_url
    assert_response :success
  end

end
