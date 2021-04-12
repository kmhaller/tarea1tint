require 'test_helper'

class PersonajesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personajes_index_url
    assert_response :success
  end

  test "should get show" do
    get personajes_show_url
    assert_response :success
  end

end
