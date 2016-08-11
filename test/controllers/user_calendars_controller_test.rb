require 'test_helper'

class UserCalendarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_calendar = user_calendars(:one)
  end

  test "should get index" do
    get user_calendars_url, as: :json
    assert_response :success
  end

  test "should create user_calendar" do
    assert_difference('UserCalendar.count') do
      post user_calendars_url, params: { user_calendar: { service_quote_id: @user_calendar.service_quote_id, user_appointment: @user_calendar.user_appointment } }, as: :json
    end

    assert_response 201
  end

  test "should show user_calendar" do
    get user_calendar_url(@user_calendar), as: :json
    assert_response :success
  end

  test "should update user_calendar" do
    patch user_calendar_url(@user_calendar), params: { user_calendar: { service_quote_id: @user_calendar.service_quote_id, user_appointment: @user_calendar.user_appointment } }, as: :json
    assert_response 200
  end

  test "should destroy user_calendar" do
    assert_difference('UserCalendar.count', -1) do
      delete user_calendar_url(@user_calendar), as: :json
    end

    assert_response 204
  end
end
