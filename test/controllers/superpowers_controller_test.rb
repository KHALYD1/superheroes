require "test_helper"

class SuperpowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @superpower = superpowers(:one)
  end

  test "should get index" do
    get superpowers_url, as: :json
    assert_response :success
  end

  test "should create superpower" do
    assert_difference("Superpower.count") do
      post superpowers_url, params: { superpower: { name: @superpower.name } }, as: :json
    end

    assert_response :created
  end

  test "should show superpower" do
    get superpower_url(@superpower), as: :json
    assert_response :success
  end

  test "should update superpower" do
    patch superpower_url(@superpower), params: { superpower: { name: @superpower.name } }, as: :json
    assert_response :success
  end

  test "should destroy superpower" do
    assert_difference("Superpower.count", -1) do
      delete superpower_url(@superpower), as: :json
    end

    assert_response :no_content
  end
end
