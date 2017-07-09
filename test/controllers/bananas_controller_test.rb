require 'test_helper'

class BananasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banana = bananas(:one)
  end

  test "should get index" do
    get bananas_url, as: :json
    assert_response :success
  end

  test "should create banana" do
    assert_difference('Banana.count') do
      post bananas_url, params: { banana: { location: @banana.location, name: @banana.name } }, as: :json
    end

    assert_response 201
  end

  test "should show banana" do
    get banana_url(@banana), as: :json
    assert_response :success
  end

  test "should update banana" do
    patch banana_url(@banana), params: { banana: { location: @banana.location, name: @banana.name } }, as: :json
    assert_response 200
  end

  test "should destroy banana" do
    assert_difference('Banana.count', -1) do
      delete banana_url(@banana), as: :json
    end

    assert_response 204
  end
end
