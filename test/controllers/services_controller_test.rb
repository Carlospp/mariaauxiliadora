require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  test "should get aesthetic" do
    get :aesthetic
    assert_response :success
  end

  test "should get endodontic" do
    get :endodontic
    assert_response :success
  end

  test "should get implant" do
    get :implant
    assert_response :success
  end

  test "should get orthodontic" do
    get :orthodontic
    assert_response :success
  end

  test "should get periodontic" do
    get :periodontic
    assert_response :success
  end

  test "should get rehabilitation" do
    get :rehabilitation
    assert_response :success
  end

  test "should get surgery" do
    get :surgery
    assert_response :success
  end

end
