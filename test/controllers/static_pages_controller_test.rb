require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Kieran P. Davis"
  end

  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get resume" do
    get resume_url
    assert_response :success
    assert_select "title", "Resume | #{@base_title}"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

end
