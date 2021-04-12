require 'test_helper'

class EpisodioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get episodio_index_url
    assert_response :success
  end

  test "should get show" do
    get episodio_show_url
    assert_response :success
  end

end
