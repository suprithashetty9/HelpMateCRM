require 'test_helper'

class InitialControllerTest < ActionDispatch::IntegrationTest
  test "should get loginpage" do
    get initial_loginpage_url
    assert_response :success
  end

end
