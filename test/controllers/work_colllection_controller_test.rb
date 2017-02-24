require 'test_helper'

class WorkColllectionControllerTest < ActionDispatch::IntegrationTest
  test "should get ux" do
    get work_colllection_ux_url
    assert_response :success
  end

  test "should get boeing" do
    get work_colllection_boeing_url
    assert_response :success
  end

  test "should get developer" do
    get work_colllection_developer_url
    assert_response :success
  end

end
