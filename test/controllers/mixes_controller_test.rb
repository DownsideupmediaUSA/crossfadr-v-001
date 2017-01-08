require 'test_helper'

class MixesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mixes_index_url
    assert_response :success
  end

end
