require 'test_helper'

class EpisdesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get episdes_index_url
    assert_response :success
  end

  test "should get show" do
    get episdes_show_url
    assert_response :success
  end

end
