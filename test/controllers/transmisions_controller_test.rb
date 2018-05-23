require 'test_helper'

class TransmisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transmision = transmisions(:one)
  end

  test "should get index" do
    get transmisions_url
    assert_response :success
  end

  test "should get new" do
    get new_transmision_url
    assert_response :success
  end

  test "should create transmision" do
    assert_difference('Transmision.count') do
      post transmisions_url, params: { transmision: { name: @transmision.name } }
    end

    assert_redirected_to transmision_url(Transmision.last)
  end

  test "should show transmision" do
    get transmision_url(@transmision)
    assert_response :success
  end

  test "should get edit" do
    get edit_transmision_url(@transmision)
    assert_response :success
  end

  test "should update transmision" do
    patch transmision_url(@transmision), params: { transmision: { name: @transmision.name } }
    assert_redirected_to transmision_url(@transmision)
  end

  test "should destroy transmision" do
    assert_difference('Transmision.count', -1) do
      delete transmision_url(@transmision)
    end

    assert_redirected_to transmisions_url
  end
end
