require 'test_helper'

class TagUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_user = tag_users(:one)
  end

  test "should get index" do
    get tag_users_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_user_url
    assert_response :success
  end

  test "should create tag_user" do
    assert_difference('TagUser.count') do
      post tag_users_url, params: { tag_user: { tagusers: @tag_user.tagusers } }
    end

    assert_redirected_to tag_user_url(TagUser.last)
  end

  test "should show tag_user" do
    get tag_user_url(@tag_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_user_url(@tag_user)
    assert_response :success
  end

  test "should update tag_user" do
    patch tag_user_url(@tag_user), params: { tag_user: { tagusers: @tag_user.tagusers } }
    assert_redirected_to tag_user_url(@tag_user)
  end

  test "should destroy tag_user" do
    assert_difference('TagUser.count', -1) do
      delete tag_user_url(@tag_user)
    end

    assert_redirected_to tag_users_url
  end
end
