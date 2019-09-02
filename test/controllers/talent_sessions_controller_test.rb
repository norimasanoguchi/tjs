require 'test_helper'

class TalentSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get talent_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get talent_sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get talent_sessions_destroy_url
    assert_response :success
  end

end
