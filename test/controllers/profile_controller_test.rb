require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get :show, id: users(:tuan).profile_name
    assert_response :success
    assert_template 'profiles/show'
  end

end
