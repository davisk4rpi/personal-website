require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Home | Kieran P. Davis"
  end

  test "should get resume" do
    get resume_url
    assert_response :success
    assert_select "title", "Resume | Kieran P. Davis"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About | Kieran P. Davis"
  end

end
