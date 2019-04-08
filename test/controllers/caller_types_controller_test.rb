require 'test_helper'

class CallerTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caller_type = caller_types(:one)
  end

  test "should get index" do
    get caller_types_url
    assert_response :success
  end

  test "should get new" do
    get new_caller_type_url
    assert_response :success
  end

  test "should create caller_type" do
    assert_difference('CallerType.count') do
      post caller_types_url, params: { caller_type: { callertype: @caller_type.callertype } }
    end

    assert_redirected_to caller_type_url(CallerType.last)
  end

  test "should show caller_type" do
    get caller_type_url(@caller_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_caller_type_url(@caller_type)
    assert_response :success
  end

  test "should update caller_type" do
    patch caller_type_url(@caller_type), params: { caller_type: { callertype: @caller_type.callertype } }
    assert_redirected_to caller_type_url(@caller_type)
  end

  test "should destroy caller_type" do
    assert_difference('CallerType.count', -1) do
      delete caller_type_url(@caller_type)
    end

    assert_redirected_to caller_types_url
  end
end
