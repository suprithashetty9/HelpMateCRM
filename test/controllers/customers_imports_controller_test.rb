require 'test_helper'

class CustomersImportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get customers_imports_new_url
    assert_response :success
  end

  test "should get create" do
    get customers_imports_create_url
    assert_response :success
  end

end
