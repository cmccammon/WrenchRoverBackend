require 'test_helper'

class ServiceCalendarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_calendar = service_calendars(:one)
  end

  test "should get index" do
    get service_calendars_url, as: :json
    assert_response :success
  end

  test "should create service_calendar" do
    assert_difference('ServiceCalendar.count') do
      post service_calendars_url, params: { service_calendar: { service_appointment: @service_calendar.service_appointment, user_id: @service_calendar.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show service_calendar" do
    get service_calendar_url(@service_calendar), as: :json
    assert_response :success
  end

  test "should update service_calendar" do
    patch service_calendar_url(@service_calendar), params: { service_calendar: { service_appointment: @service_calendar.service_appointment, user_id: @service_calendar.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy service_calendar" do
    assert_difference('ServiceCalendar.count', -1) do
      delete service_calendar_url(@service_calendar), as: :json
    end

    assert_response 204
  end
end
