require 'test_helper'

class ServiceCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_center = service_centers(:one)
  end

  test "should get index" do
    get service_centers_url, as: :json
    assert_response :success
  end

  test "should create service_center" do
    assert_difference('ServiceCenter.count') do
      post service_centers_url, params: { service_center: { service_address: @service_center.service_address, service_bio: @service_center.service_bio, service_city: @service_center.service_city, service_email: @service_center.service_email, service_name: @service_center.service_name, service_phone: @service_center.service_phone, service_state: @service_center.service_state, service_zip: @service_center.service_zip } }, as: :json
    end

    assert_response 201
  end

  test "should show service_center" do
    get service_center_url(@service_center), as: :json
    assert_response :success
  end

  test "should update service_center" do
    patch service_center_url(@service_center), params: { service_center: { service_address: @service_center.service_address, service_bio: @service_center.service_bio, service_city: @service_center.service_city, service_email: @service_center.service_email, service_name: @service_center.service_name, service_phone: @service_center.service_phone, service_state: @service_center.service_state, service_zip: @service_center.service_zip } }, as: :json
    assert_response 200
  end

  test "should destroy service_center" do
    assert_difference('ServiceCenter.count', -1) do
      delete service_center_url(@service_center), as: :json
    end

    assert_response 204
  end
end
