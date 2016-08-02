require 'test_helper'

class ServiceQuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_quote = service_quotes(:one)
  end

  test "should get index" do
    get service_quotes_url, as: :json
    assert_response :success
  end

  test "should create service_quote" do
    assert_difference('ServiceQuote.count') do
      post service_quotes_url, params: { service_quote: { quote_request_data: @service_quote.quote_request_data, request_issue: @service_quote.request_issue, service_center_id: @service_quote.service_center_id } }, as: :json
    end

    assert_response 201
  end

  test "should show service_quote" do
    get service_quote_url(@service_quote), as: :json
    assert_response :success
  end

  test "should update service_quote" do
    patch service_quote_url(@service_quote), params: { service_quote: { quote_request_data: @service_quote.quote_request_data, request_issue: @service_quote.request_issue, service_center_id: @service_quote.service_center_id } }, as: :json
    assert_response 200
  end

  test "should destroy service_quote" do
    assert_difference('ServiceQuote.count', -1) do
      delete service_quote_url(@service_quote), as: :json
    end

    assert_response 204
  end
end
