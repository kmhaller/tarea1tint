require 'test_helper'

class PersonajeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personaje_index_url
    assert_response :success
  end

  test "should get show" do
    get personaje_show_url
    assert_response :success
  end

end
