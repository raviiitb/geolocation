require 'test_helper'

class GeoControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get geo_search_url
    assert_response :success
  end

end
